import 'package:flutter/material.dart';
import './day_card.dart';

class DailyWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        DayCard(),
        DayCard(),
        DayCard(),
        DayCard(),
        DayCard(),
      ],
    );
  }
}