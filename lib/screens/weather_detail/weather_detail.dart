import 'package:flutter/material.dart';
import './weather_section.dart';
import './daily_weather.dart';
import './geolocator.dart';

class WeatherDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        FutureBuilder<WeatherData>(
          future: WeatherFetcher().fetchDayWeather(), // a previously-obtained Future<String> or null
          builder: (BuildContext context, AsyncSnapshot<WeatherData> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Text('Press button to start.');
              case ConnectionState.active:
              case ConnectionState.waiting:
                return Text('Awaiting result...');
              case ConnectionState.done:
                if (snapshot.hasError)
                  return Text('Error: ${snapshot.error}');
                return WeatherSection(snapshot.data);
            }
            return null; // unreachable
          },
        ),
        DailyWeather(),
      ],
    );
  }
}