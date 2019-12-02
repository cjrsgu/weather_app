import 'package:flutter/material.dart';
import './weather_section.dart';
import './daily_weather.dart';

class WeatherDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        WeatherSection(),
        DailyWeather(),
      ],
    );
  }
}