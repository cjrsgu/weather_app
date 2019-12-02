import 'package:flutter/material.dart';
import './screens/weather_detail/weather_detail.dart';
void main() => runApp(Root());

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Weather app'),
          ),
          body: WeatherDetail(),
      ),
    );
  }
}

