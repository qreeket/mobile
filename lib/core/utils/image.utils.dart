import 'dart:io';

import 'package:flutter/services.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

Future<Uint8List> fileToBytes(String filePath) async =>
    await File(filePath).readAsBytes();

Future<Uint8List> assetToBytes(String assetPath) async {
  // Load asset file as bytes
  ByteData assetByteData = await rootBundle.load(assetPath);
  return assetByteData.buffer.asUint8List();
}

Future<File?> pickImageFromGallery([bool allowCropping = true]) async {
  var picker = ImagePicker();
  var xFile = await picker.pickImage(source: ImageSource.gallery);
  if (xFile == null) return null;
  if (allowCropping) {
    var path = await _cropImage(xFile);
    return path == null ? null : File(path);
  }
  return File(xFile.path);
}

Future<File?> pickImageFromCamera([bool allowCropping = true]) async {
  var picker = ImagePicker();
  var xFile = await picker.pickImage(source: ImageSource.camera);
  if (xFile == null) return null;
  if (allowCropping) {
    var path = await _cropImage(xFile);
    return path == null ? null : File(path);
  }
  return File(xFile.path);
}

Future<String?> _cropImage(XFile imageFile) async {
  var cropper = ImageCropper();
  var croppedFile = await cropper.cropImage(
    sourcePath: imageFile.path,
    compressFormat: ImageCompressFormat.png,
    compressQuality: 85,
    maxHeight: 1024,
    maxWidth: 1024,
  );
  return croppedFile?.path;
}
