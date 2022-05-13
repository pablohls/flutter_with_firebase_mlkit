import 'package:flutter/material.dart';
import 'package:flutter_with_firebase_mlkit/src/controller/image_controller.dart';
import 'package:flutter_with_firebase_mlkit/src/controller/scanner_codigo_barras_controller.dart';
import 'package:flutter_with_firebase_mlkit/src/controller/text_recognizer_controller.dart';
import 'package:provider/provider.dart';

import 'src/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => ScannerCodigoBarrasController()),
        ChangeNotifierProvider(create: (context) => ImageController()),
        ChangeNotifierProvider(create: (context) => TextRecognizerController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.lightBlue,
        ),
        initialRoute: Rotas.rotaInicial,
        routes: Rotas.rotas,
        //home: HomeView(),
      ),
    );
  }
}
