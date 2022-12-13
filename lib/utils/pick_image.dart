import 'dart:io';

import 'package:image_picker/image_picker.dart';

dynamic noImage() {}

Future<File> pickImage() async {
  final ImagePicker _picker = ImagePicker();
  final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

  if (image == null) {
    return noImage();
  } else {
    return File(image.path);
  }
}

Future<File> pickImageFromCamera() async {
  final ImagePicker _picker = ImagePicker();
  final XFile? image = await _picker.pickImage(source: ImageSource.camera);

  if (image == null) {
    return noImage();
  } else {
    return File(image.path);
  }
}
