import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Input.dart';
import 'Result.dart';
import 'Convert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
// This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _inputUser = 0;

  double _kelvin = 0;

  double _reamur = 0;

  TextEditingController inputUserController = TextEditingController();

  void _konverterSuhu() {
    setState(() {
      _inputUser = double.parse(inputUserController.text);
      _reamur = (4 / 5) * _inputUser;
      _kelvin = 273 + _inputUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Input(inputUserController: inputUserController),
              Result(kelvin: _kelvin, reamur: _reamur),
              Convert(konvertHandler: _konverterSuhu),
            ],
          ),
        ),
      ),
    );
  }
}
