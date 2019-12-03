import 'package:flutter/material.dart';
import './icon_handler.dart';

class WeatherSection extends StatelessWidget {
  final weatherData;
  WeatherSection(this.weatherData);

  @override
  Widget build(BuildContext context) {
    IconData iconData = IconHandler().getIconCode(weatherData.icon);

    return Column(
      children: <Widget>[
        Text(weatherData.city),
        Text('${weatherData.temperature}'),
        Row(
          children: <Widget>[
            Icon(iconData, size: 20.0, color: Colors.black),
            Text(weatherData.description)
          ],
        ),
      ],
    );
  }
}