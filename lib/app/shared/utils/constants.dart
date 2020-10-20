import 'package:flutter/material.dart';
import 'package:flutter_weather_icons/flutter_weather_icons.dart';

const BASE_URL = 'http://api.openweathermap.org/data/2.5';
const API_KEY = 'c4ebdd08df9085fc6fb8acef0186b1eb';


const List<String> WEEKDAYS = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
const List<String> MONTHS = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];


const Map<String, IconData> WEATHER_ICONS = {
  '01d': WeatherIcons.wiDaySunny,
  '01n': WeatherIcons.wiNightClear,
  '02d': WeatherIcons.wiDayCloudy,
  '02n': WeatherIcons.wiNightAltCloudy,
  '03d': WeatherIcons.wiCloud,
  '03n': WeatherIcons.wiCloud,
  '04d': WeatherIcons.wiCloudy,
  '04n': WeatherIcons.wiCloudy,
  '09d': WeatherIcons.wiDayShowers,
  '09n': WeatherIcons.wiNightAltShowers,
  '10d': WeatherIcons.wiDayRain,
  '10n': WeatherIcons.wiNightAltRain,
  '11d': WeatherIcons.wiDayThunderstorm,
  '11n': WeatherIcons.wiNightAltThunderstorm,
  '13d': WeatherIcons.wiDaySnow,
  '13n': WeatherIcons.wiNightAltSnow,
  '50d': WeatherIcons.wiDayFog,
  '50n': WeatherIcons.wiNightFog,
};