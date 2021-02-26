import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Result extends StatelessWidget {
  const Result({
    Key key,
    @required double kelvin,
    @required double reamur,
  })  : _kelvin = kelvin,
        _reamur = reamur,
        super(key: key);

  final double _kelvin;
  final double _reamur;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              "Suhu dalam Kelvin",
              style: TextStyle(fontSize: 16),
            ),
            Divider(),
            Text(
              '$_kelvin',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Text(
              "Suhu dalam Reamur",
              style: TextStyle(fontSize: 16),
            ),
            Divider(), //jarak antar text
            Text(
              _reamur.toStringAsFixed(2),
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
