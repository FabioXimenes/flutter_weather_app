import 'package:wheather_app/app/shared/repositories/local_storage_shared_preferences.dart';

import 'shared/models/favorite_cities_model.dart';
import 'package:dio/dio.dart';
import 'package:wheather_app/app/modules/city_weather/city_weather_controller.dart';
import 'package:wheather_app/app/modules/city_weather/city_weather_module.dart';
import 'package:wheather_app/app/modules/home/home_controller.dart';
import 'package:wheather_app/app/modules/login/login_module.dart';
import 'package:wheather_app/app/shared/models/favorite_cities_model.dart';
import 'package:wheather_app/app/shared/repositories/forecast_repository.dart';
import 'package:wheather_app/app/shared/repositories/weather_repository.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:wheather_app/app/app_widget.dart';
import 'package:wheather_app/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        Bind((i) => HomeController(i.get())),
        $FavoriteCitiesModel,
        $CityWeatherController,
        Bind((i) => WeatherRepository(i.get())),
        Bind((i) => ForecastRepository(i.get())),
        Bind((i) => Dio()),
        Bind((i) => LocalStorageShared())
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', module: LoginModule()),
        ModularRouter('/home', module: HomeModule()),
        ModularRouter('/city', module: CityWeatherModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
