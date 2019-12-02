import 'package:flutter/material.dart';

class WeatherSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('sity'),
        Text('temperature'),
        Row(
          children: <Widget>[
            Text('icon'),
            Text('description')
          ],
        ),
        Text('image'),
      ],
    );
  }
}