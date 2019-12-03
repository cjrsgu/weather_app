import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherData {
  final city;
  final temperature;
  final description;
  final icon;

  WeatherData(this.city, this.temperature, this.description, this.icon);
}

class WeatherFetcher {
  final API_KEY = 'f288918a3488b30891fd62b065586fda';

  Future<WeatherData> fetchDayWeather() async {
    Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    final response = await http.get('https://samples.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=${this.API_KEY}');

//    final response = await http.get('https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=${this.API_KEY}&units=metric');

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      print(jsonData);
      return WeatherData(
        jsonData['name'],
        jsonData['main']['temp'],
        jsonData['weather'][0]['description'],
        jsonData['weather'][0]['icon'],
      );
    }
  }

}
