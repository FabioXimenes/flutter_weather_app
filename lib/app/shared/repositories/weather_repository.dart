import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wheather_app/app/shared/models/current_weather_model.dart';
import 'package:wheather_app/app/shared/utils/constants.dart';

class WeatherRepository {
  final Dio dio;

  WeatherRepository(this.dio);

  Future<CurrentWeatherModel> getWeatherInfo(String cityName) async {
    String url = '$BASE_URL/weather?q=$cityName&appid=$API_KEY&units=metric';
    
    try {
      var response = await dio.get(url);
      Map dataMap = jsonDecode(response.toString());
      var weather = CurrentWeatherModel.fromJson(dataMap);
      
      return weather;
    } on DioError catch(e){
      throw(e.message);
    }
  }
}
