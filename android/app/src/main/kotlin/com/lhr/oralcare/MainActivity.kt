package com.lhr.oralcare

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import androidx.exifinterface.media.ExifInterface
import android.os.Build
import java.io.File
import java.io.IOException
import android.content.Intent
import android.provider.MediaStore
import android.net.Uri
import java.io.FileOutputStream
import java.io.InputStream
import android.content.ContentResolver
import android.database.Cursor
import android.provider.OpenableColumns
import java.io.FileInputStream

class MainActivity: FlutterActivity() {
    private val androidVersionChannel = "android_version"
    private val filePickerChannel = "native_file_picker"

    private var pendingResult: MethodChannel.Result? = null
    private val PICK_FILE_REQUEST = 1001

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        // 處理 Android 版本號的 Channel
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, androidVersionChannel)
            .setMethodCallHandler { call, result ->
                if (call.method == "getAndroidVersion") {
                    val androidVersion = Build.VERSION.SDK_INT
                    result.success(androidVersion)
                } else {
                    result.notImplemented()
                }
            }

        // 處理原生文件選擇的 Channel
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, filePickerChannel)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "pickImageFile" -> {
                        pickImageFile(result)
                    }
                    "pickImageFromGallery" -> {
                        val allowMultiple = call.argument<Boolean>("allowMultiple") ?: false
                        println("Native: pickImageFromGallery called with allowMultiple = $allowMultiple")
                        if (allowMultiple) {
                            println("Native: Using multiple selection mode")
                            pickMultipleImagesFromGallery(result)
                        } else {
                            println("Native: Using single selection mode")
                            pickImageFromGallery(result)
                        }
                    }
                    "copyUriToFile" -> {
                        val uriString = call.argument<String>("uri")
                        val targetPath = call.argument<String>("targetPath")
                        if (uriString == null || targetPath == null) {
                            result.error("INVALID_ARGUMENT", "URI and target path cannot be null.", null)
                        } else {
                            copyUriToFile(uriString, targetPath, result)
                        }
                    }
                    else -> {
                        result.notImplemented()
                    }
                }
            }
    }

    private fun pickImageFile(result: MethodChannel.Result) {
        pendingResult = result

        val intent = Intent(Intent.ACTION_GET_CONTENT).apply {
            type = "image/*"
            addCategory(Intent.CATEGORY_OPENABLE)
            putExtra(Intent.EXTRA_ALLOW_MULTIPLE, false)
        }

        startActivityForResult(Intent.createChooser(intent, "選擇圖片"), PICK_FILE_REQUEST)
    }

    private fun pickImageFromGallery(result: MethodChannel.Result) {
        pendingResult = result

        // 直接建立 ACTION_PICK Intent 相簿
        val intent = Intent(Intent.ACTION_PICK, MediaStore.Images.Media.EXTERNAL_CONTENT_URI).apply {
            type = "image/*"
        }

        if (intent.resolveActivity(packageManager) != null) {
            startActivityForResult(intent, PICK_FILE_REQUEST)
        } else {
            // 如果沒有 App 可以處理，則退回使用 GET_CONTENT
            println("Native: No activity found to handle ACTION_PICK, falling back to ACTION_GET_CONTENT")
            val fallbackIntent = Intent(Intent.ACTION_GET_CONTENT).apply {
                type = "image/*"
                addCategory(Intent.CATEGORY_OPENABLE)
            }
            startActivityForResult(Intent.createChooser(fallbackIntent, "選擇圖片"), PICK_FILE_REQUEST)
        }
    }

    private fun pickMultipleImagesFromGallery(result: MethodChannel.Result) {
        pendingResult = result

        // 多選模式：只能使用 ACTION_GET_CONTENT
        val intent = Intent(Intent.ACTION_GET_CONTENT).apply {
            type = "image/*"
            addCategory(Intent.CATEGORY_OPENABLE)
            putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true)
        }

        startActivityForResult(Intent.createChooser(intent, "選擇多張圖片"), PICK_FILE_REQUEST)
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)

        if (requestCode == PICK_FILE_REQUEST) {
            val result = pendingResult
            pendingResult = null

            if (resultCode == RESULT_OK && data != null) {
                val fileInfoList = mutableListOf<Map<String, Any>>()

                // 檢查是否有多個文件
                val clipData = data.clipData
                if (clipData != null) {
                    // 多選模式
                    for (i in 0 until clipData.itemCount) {
                        val uri = clipData.getItemAt(i).uri
                        val fileName = getFileName(uri)
                        val fileSize = getFileSize(uri)

                        val fileInfo = mapOf(
                            "uri" to uri.toString(),
                            "name" to fileName,
                            "size" to fileSize
                        )
                        fileInfoList.add(fileInfo)
                    }
                } else if (data.data != null) {
                    // 單選模式
                    val uri = data.data!!
                    val fileName = getFileName(uri)
                    val fileSize = getFileSize(uri)

                    val fileInfo = mapOf(
                        "uri" to uri.toString(),
                        "name" to fileName,
                        "size" to fileSize
                    )
                    fileInfoList.add(fileInfo)
                }

                result?.success(fileInfoList)
            } else {
                result?.success(null)
            }
        }
    }

    private fun getFileName(uri: Uri): String {
        var fileName = "unknown"
        val cursor: Cursor? = contentResolver.query(uri, null, null, null, null)
        cursor?.use {
            if (it.moveToFirst()) {
                val nameIndex = it.getColumnIndex(OpenableColumns.DISPLAY_NAME)
                if (nameIndex != -1) {
                    fileName = it.getString(nameIndex)
                }
            }
        }
        return fileName
    }

    private fun getFileSize(uri: Uri): Long {
        var size = 0L
        val cursor: Cursor? = contentResolver.query(uri, null, null, null, null)
        cursor?.use {
            if (it.moveToFirst()) {
                val sizeIndex = it.getColumnIndex(OpenableColumns.SIZE)
                if (sizeIndex != -1) {
                    size = it.getLong(sizeIndex)
                }
            }
        }
        return size
    }

    private fun copyUriToFile(uriString: String, targetPath: String, result: MethodChannel.Result) {
        try {
            val uri = Uri.parse(uriString)
            val inputStream: InputStream? = contentResolver.openInputStream(uri)

            if (inputStream == null) {
                result.error("INPUT_STREAM_ERROR", "Cannot open input stream for URI", null)
                return
            }

            val targetFile = File(targetPath)
            targetFile.parentFile?.mkdirs()

            val outputStream = FileOutputStream(targetFile)

            inputStream.use { input ->
                outputStream.use { output ->
                    input.copyTo(output)
                }
            }

            result.success(targetPath)

        } catch (e: Exception) {
            result.error("COPY_ERROR", "Error copying file: ${e.message}", null)
        }
    }
}