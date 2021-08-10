import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Atividade layout flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              color: Colors.blue[900],
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              child: Text(
                "Unifacef",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(5),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blue)),
                child: Text(
                  "Engenharia de Software",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, color: Colors.blue[900]),
                )),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Tiago de Freitas",
                  style: TextStyle(fontSize: 16, color: Colors.blue[900]),
                )),
            Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "06/11/2000",
                  style: TextStyle(fontSize: 16, color: Colors.blue[900]),
                )),
            Text(
              "tiagofreitasp00@gmail.com",
              style: TextStyle(fontSize: 12, color: Colors.blue[900]),
            )
          ],
        ),
      ),
    );
  }
}
