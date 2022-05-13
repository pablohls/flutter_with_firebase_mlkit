import 'package:flutter/material.dart';
import 'package:flutter_with_firebase_mlkit/src/controller/image_controller.dart';
import 'package:provider/provider.dart';

import '../../controller/scanner_codigo_barras_controller.dart';

class ScannerCodigoBarras extends StatefulWidget {
  const ScannerCodigoBarras({Key? key}) : super(key: key);

  @override
  _ScannerCodigoBarrasState createState() => _ScannerCodigoBarrasState();
}

class _ScannerCodigoBarrasState extends State<ScannerCodigoBarras> {
  @override
  Widget build(BuildContext context) {
    final imgController = context.watch<ImageController>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Scanner Codigo de Barras'),
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
                )
        ],
      ),
    );
  }
}
