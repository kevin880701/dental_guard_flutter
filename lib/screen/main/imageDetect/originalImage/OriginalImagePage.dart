import 'dart:io';

import 'package:dental_guard_flutter/provider/PageProvider.dart';
import 'package:dental_guard_flutter/screen/main/imageDetect/ImageDetectProvider.dart';
import 'package:dental_guard_flutter/utils/DialogManager.dart';
import 'package:dental_guard_flutter/utils/FileManager.dart';
import 'package:dental_guard_flutter/utils/ToastHelper.dart';
import 'package:dental_guard_flutter/widgets/common/ImageWidgets.dart';
import 'package:dental_guard_flutter/widgets/common/TextWidgets.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:permission_handler/permission_handler.dart';

class OriginalImagePage extends HookConsumerWidget {
  const OriginalImagePage({super.key, this.originalUrl});

  final String? originalUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageDetectNotifier = ref.read(imageDetectProvider.notifier);
    final imageDetectState = ref.watch(imageDetectProvider);

    final mediaSize = useState<Size?>(null);

    Future<void> requestPermissions() async {
      await [
        Permission.camera,
        Permission.storage,
      ].request();
    }

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        requestPermissions();
      });

      return null;
    }, []);

    useEffect(() {
      if (imageDetectState.originalImage != null) {
        Image.file(imageDetectState.originalImage!)
            .image
            .resolve(ImageConfiguration())
            .addListener(
          ImageStreamListener((ImageInfo info, bool _) {
            mediaSize.value =
                Size(info.image.width.toDouble(), info.image.height.toDouble());
          }),
        );
      }

      return null;
    }, [imageDetectState.originalImage]);

    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.borderGrey,
          width: 2,
        ),
      ),
      child: (imageDetectState.originalImage != null || originalUrl != null)
          ? ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: (originalUrl == null)
                  ? Image.file(
                      File(imageDetectState.originalImage!.path),
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return _buildImageErrorWidget();
                      },
                    )
                  : netImage(
                      'https://dental-service.jieniguicare.org/api/analysis/${originalUrl!}'),
            )
          : GestureDetector(
              onTap: () async {
                showChooseImageDialog(context, onChooseImageTap: () async {
                  await pickMedia(
                    context: context,
                    sizeLimitMB: 50,
                    fileLimit: 1,
                    fileType: FileType.image,
                  ).then((selectedFiles) {
                    if (selectedFiles.isNotEmpty) {
                      imageDetectNotifier.updateImage(
                          originalImage: selectedFiles[0]);
                    }
                  });
                }, onCapturePhotoTap: () async {
                  ref.read(pageProvider.notifier).showLoading();
                  capturePhoto(context: context).then((file) async {
                    if (file != null) {
                      compressImage(file).then((compressedFile){
                        imageDetectNotifier.updateImage(
                            originalImage: compressedFile);
                        ref.read(pageProvider.notifier).hideLoading();
                      });
                    }
                  });
                });
              },
              child: Container(
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,
                child: customText(
                  AppTexts.selectImage,
                ),
              ),
            ),
    );
  }
}

// 圖片錯誤時Widget
Widget _buildImageErrorWidget() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        'ic_broken_image.png',
        width: 36,
        height: 36,
        color: Colors.grey,
      ),
      Text(
        '圖片載入失敗',
        style: TextStyle(fontSize: 8),
        textAlign: TextAlign.center,
      ),
    ],
  );
}
