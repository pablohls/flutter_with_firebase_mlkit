import 'package:flutter/material.dart';
import 'package:flutter_with_firebase_mlkit/src/routes/routes.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  //bool? valor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter + Firebase MLKit'),
      ),
      body: Container(
        color: Colors.amber,
        //height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            Flexible(
              child: FractionallySizedBox(
                //heightFactor: 0.6,
                widthFactor: 0.6,
                child: ListView.builder(
                    itemCount: Rotas.rotas.length - 1,
                    itemBuilder: (context, index) {
                      return ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, Rotas().getRota(index));
                          },
                          child: Text(Rotas().getRotaNome(index)));
                    }),
              ),
            ),
            // Switch(
            //   value: valor!,
            //   onChanged: (bool value) {
            //     setState(() {
            //       valor = value;
            //       print(value);
            //     });
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
