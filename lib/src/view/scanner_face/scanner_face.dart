import 'package:flutter/material.dart';

class ScannerFace extends StatefulWidget {
  const ScannerFace({Key? key}) : super(key: key);

  @override
  _ScannerFaceState createState() => _ScannerFaceState();
}

class _ScannerFaceState extends State<ScannerFace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Scanner Face'),
      ),
    );
  }
}
