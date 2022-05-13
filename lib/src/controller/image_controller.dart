import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends ChangeNotifier {
  File? _pickedImage;
  bool _isImageLoaded = false;

  bool get isImageLoaded {
    return _isImageLoaded;
  }

  File get pickedImage {
    return _pickedImage!;
  }

  getImageFromGallery() async {
    var tempStore = await ImagePicker().pickImage(source: ImageSource.gallery);

    _pickedImage = File(tempStore!.path);
    _isImageLoaded = true;
    notifyListeners();
  }
}
