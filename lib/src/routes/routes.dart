import 'package:flutter_with_firebase_mlkit/src/view/home_view/home_view.dart';

import '../view/scanner_codigo_barras/scanner_codigo_barras.dart';
import '../view/scanner_face/scanner_face.dart';
import '../view/scanner_rotulo/scanner_rotulo.dart';
import '../view/scanner_texto/scanner_texto.dart';

class Rotas {
  static const String rotaInicial = "/";
  static final rotas = {
    '/': (context) => const HomeView(),
    '/Scanner_Codigo_de_Barras': (context) => const ScannerCodigoBarras(),
    '/Scanner_Face': (context) => const ScannerFace(),
    '/Scanner_Rotulo': (context) => const ScannerRotulo(),
    '/Scanner_Texto': (context) => const ScannerTexto(),
  };

  getRotaNome(int index) {
    return rotas.keys
        .elementAt(index + 1)
        .toString()
        .split('/')[1]
        .replaceAll('_', ' ');
  }

  getRota(int index) {
    return rotas.keys.elementAt(index + 1).toString();
  }
}
