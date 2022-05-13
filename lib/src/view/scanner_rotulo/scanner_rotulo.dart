import 'package:flutter/material.dart';

class ScannerRotulo extends StatefulWidget {
  const ScannerRotulo({Key? key}) : super(key: key);

  @override
  _ScannerRotuloState createState() => _ScannerRotuloState();
}

class _ScannerRotuloState extends State<ScannerRotulo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Scanner Rotulo'),
      ),
    );
  }
}
