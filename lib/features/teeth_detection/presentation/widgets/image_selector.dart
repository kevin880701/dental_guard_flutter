import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/routes/app_router.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/dialog_manager.dart';
import '../../../../core/utils/file_manager.dart';
import '../../../../core/widgets/text/app_text.dart';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dental_guard_flutter/core/constants/app_resources.dart';

class ImageSelector extends StatelessWidget {
  final Function(File image) onImageSelected;

  const ImageSelector({
    super.key,
    required this.onImageSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        showChooseImageDialog(
          context,
          onChooseImageTap: () async {
            final selectedFiles = await FileManager.instance.pickMedia(
              context: context,
              sizeLimitMB: 20,
              fileLimit: 1,
            );
            if (selectedFiles.isNotEmpty) {
              onImageSelected(selectedFiles[0]);
            }
          },
          onCapturePhotoTap: () async {
            context.pushRoute(CameraRoute());
          },
        );
      },
      child: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        child: const AppText(
          text: AppStrings.selectImage,
        ),
      ),
    );
  }
}
