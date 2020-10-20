import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wheather_app/app/shared/models/forecast_model.dart';
import 'package:wheather_app/app/shared/utils/constants.dart';

class ForecastRepository {
  final Dio dio;

  ForecastRepository(this.dio);

  Future<ForecastModel> getAllStats(double lat, double lon) async{
    String url = '$BASE_URL/onecall?lat=$lat&lon=$lon&exclude=minutely,alerts&appid=$API_KEY&units=metric';
    
    try{
      var response = await dio.get(url);
      Map forecastMap = jsonDecode(response.toString());
      var forecastModel = ForecastModel.fromJson(forecastMap);
    
      return forecastModel;
    } on DioError catch (e) {
      throw(e.message);
    }
  } 
}