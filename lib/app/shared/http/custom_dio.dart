import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:wheather_app/app/shared/utils/constants.dart';

class CustomDio extends DioForNative {

  CustomDio(){
    options.baseUrl = BASE_URL;
  }
  
}