import 'package:flutter/material.dart';
import 'package:flutter_with_firebase_mlkit/src/controller/image_controller.dart';
import 'package:flutter_with_firebase_mlkit/src/controller/text_recognizer_controller.dart';
import 'package:provider/provider.dart';

class ScannerTexto extends StatefulWidget {
  const ScannerTexto({Key? key}) : super(key: key);

  @override
  _ScannerTextoState createState() => _ScannerTextoState();
}

class _ScannerTextoState extends State<ScannerTexto> {
  @override
  Widget build(BuildContext context) {
    final imgController = context.watch<ImageController>();
    final txtRecController = context.watch<TextRecognizerController>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Scanner Texto'),
        actions: [
          IconButton(
              onPressed: imgController.getImageFromGallery,
              icon: const Icon(Icons.add_a_photo_outlined))
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          imgController.isImageLoaded
              ? Center(
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: FileImage(imgController.pickedImage),
                            fit: BoxFit.cover)),
                  ),
                )
              : Container(
                  color: Colors.amber,
                ),
          //txtRecController.textRecognizer()
          Expanded(
            child: Center(
              child: Text(
                txtRecController.resultado,
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () =>
              txtRecController.readTextFromImage(imgController.pickedImage),
          child: const Icon(Icons.check)),
    );
  }
}
