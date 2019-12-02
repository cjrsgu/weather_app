import 'package:flutter/material.dart';

class DayCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('------'),
        Text('MON'),
        Icon(const IconData(0xe902, fontFamily: 'weather'), size: 20.0, color: Colors.black),
        Text('temperature'),
      ],
    );
  }
}