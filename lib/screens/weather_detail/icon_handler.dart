import 'package:flutter/material.dart';

class IconHandler {
  getIconCode(String iconWeatherCode) {
    switch(iconWeatherCode) {
      case '11d': {
        return const IconData(0xe90f, fontFamily: 'weather');
      }
      case '09d': {
        return const IconData(0xe912, fontFamily: 'weather');
      }
      case '10d': {
        return const IconData(0xe918, fontFamily: 'weather');
      }
      case '13d': {
        return const IconData(0xe913, fontFamily: 'weather');
      }
      case '50d': {
        return const IconData(0xe91d, fontFamily: 'weather');
      }
      case '01d': {
        return const IconData(0xe928, fontFamily: 'weather');
      }
      case '01n': {
        return const IconData(0xe927, fontFamily: 'weather');
      }
      case '02d': {
        return const IconData(0xe922, fontFamily: 'weather');
      }
      case '02n': {
        return const IconData(0xe921, fontFamily: 'weather');
      }
      case '03n':
      case '03d': {
      return const IconData(0xe91c, fontFamily: 'weather');
      }
      case '04d':
      case '04n': {
      return const IconData(0xe911, fontFamily: 'weather');
      }
      default: return const IconData(0xe912, fontFamily: 'weather');;
    }
  }
}