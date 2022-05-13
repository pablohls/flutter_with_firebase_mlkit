import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_with_firebase_mlkit/src/controller/image_controller.dart';
import 'package:google_ml_kit/google_ml_kit.dart';

class TextRecognizerController extends ChangeNotifier {
  final _textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);
  String _resultado = '';

  String get resultado {
    return _resultado;
  }

  readTextFromImage(File image) async {
    _resultado = '';
    final inputImage = InputImage.fromFile(image);
    final RecognizedText recognizedText =
        await _textRecognizer.processImage(inputImage);

    //print("RESULTADO DO RECONHECIMENTO DE TEXTO: ${recognizedText.text}");
    for (TextBlock block in recognizedText.blocks) {
      //print(block.text);
      for (TextLine line in block.lines) {
        //print(line.text);
        for (TextElement word in line.elements) {
          //print(word.text);
          _resultado = _resultado + ' ' + word.text;
        }
      }
    }
    notifyListeners();
  }
}
