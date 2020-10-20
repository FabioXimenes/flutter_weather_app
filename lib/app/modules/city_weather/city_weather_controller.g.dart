// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_weather_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CityWeatherController = BindInject(
  (i) => CityWeatherController(i<WeatherRepository>(), i<ForecastRepository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CityWeatherController on _CityWeatherControllerBase, Store {
  Computed<bool> _$isFavComputed;

  @override
  bool get isFav => (_$isFavComputed ??= Computed<bool>(() => super.isFav,
          name: '_CityWeatherControllerBase.isFav'))
      .value;

  final _$favCitiesAtom = Atom(name: '_CityWeatherControllerBase.favCities');

  @override
  FavoriteCitiesModel get favCities {
    _$favCitiesAtom.reportRead();
    return super.favCities;
  }

  @override
  set favCities(FavoriteCitiesModel value) {
    _$favCitiesAtom.reportWrite(value, super.favCities, () {
      super.favCities = value;
    });
  }

  final _$favCitiesNamesAtom =
      Atom(name: '_CityWeatherControllerBase.favCitiesNames');

  @override
  List<String> get favCitiesNames {
    _$favCitiesNamesAtom.reportRead();
    return super.favCitiesNames;
  }

  @override
  set favCitiesNames(List<String> value) {
    _$favCitiesNamesAtom.reportWrite(value, super.favCitiesNames, () {
      super.favCitiesNames = value;
    });
  }

  final _$weatherAtom = Atom(name: '_CityWeatherControllerBase.weather');

  @override
  CurrentWeatherModel get weather {
    _$weatherAtom.reportRead();
    return super.weather;
  }

  @override
  set weather(CurrentWeatherModel value) {
    _$weatherAtom.reportWrite(value, super.weather, () {
      super.weather = value;
    });
  }

  final _$current_page_indexAtom =
      Atom(name: '_CityWeatherControllerBase.current_page_index');

  @override
  int get current_page_index {
    _$current_page_indexAtom.reportRead();
    return super.current_page_index;
  }

  @override
  set current_page_index(int value) {
    _$current_page_indexAtom.reportWrite(value, super.current_page_index, () {
      super.current_page_index = value;
    });
  }

  final _$latAtom = Atom(name: '_CityWeatherControllerBase.lat');

  @override
  double get lat {
    _$latAtom.reportRead();
    return super.lat;
  }

  @override
  set lat(double value) {
    _$latAtom.reportWrite(value, super.lat, () {
      super.lat = value;
    });
  }

  final _$lonAtom = Atom(name: '_CityWeatherControllerBase.lon');

  @override
  double get lon {
    _$lonAtom.reportRead();
    return super.lon;
  }

  @override
  set lon(double value) {
    _$lonAtom.reportWrite(value, super.lon, () {
      super.lon = value;
    });
  }

  final _$forecastAtom = Atom(name: '_CityWeatherControllerBase.forecast');

  @override
  ForecastModel get forecast {
    _$forecastAtom.reportRead();
    return super.forecast;
  }

  @override
  set forecast(ForecastModel value) {
    _$forecastAtom.reportWrite(value, super.forecast, () {
      super.forecast = value;
    });
  }

  final _$hasWeatherAtom = Atom(name: '_CityWeatherControllerBase.hasWeather');

  @override
  bool get hasWeather {
    _$hasWeatherAtom.reportRead();
    return super.hasWeather;
  }

  @override
  set hasWeather(bool value) {
    _$hasWeatherAtom.reportWrite(value, super.hasWeather, () {
      super.hasWeather = value;
    });
  }

  final _$hasForecastAtom =
      Atom(name: '_CityWeatherControllerBase.hasForecast');

  @override
  bool get hasForecast {
    _$hasForecastAtom.reportRead();
    return super.hasForecast;
  }

  @override
  set hasForecast(bool value) {
    _$hasForecastAtom.reportWrite(value, super.hasForecast, () {
      super.hasForecast = value;
    });
  }

  final _$initAsyncAction = AsyncAction('_CityWeatherControllerBase.init');

  @override
  Future init() {
    return _$initAsyncAction.run(() => super.init());
  }

  final _$getAllCityStatsAsyncAction =
      AsyncAction('_CityWeatherControllerBase.getAllCityStats');

  @override
  Future<dynamic> getAllCityStats(dynamic cityName) {
    return _$getAllCityStatsAsyncAction
        .run(() => super.getAllCityStats(cityName));
  }

  final _$_CityWeatherControllerBaseActionController =
      ActionController(name: '_CityWeatherControllerBase');

  @override
  void setIndex(dynamic index) {
    final _$actionInfo = _$_CityWeatherControllerBaseActionController
        .startAction(name: '_CityWeatherControllerBase.setIndex');
    try {
      return super.setIndex(index);
    } finally {
      _$_CityWeatherControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addFavCity() {
    final _$actionInfo = _$_CityWeatherControllerBaseActionController
        .startAction(name: '_CityWeatherControllerBase.addFavCity');
    try {
      return super.addFavCity();
    } finally {
      _$_CityWeatherControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeFavCity() {
    final _$actionInfo = _$_CityWeatherControllerBaseActionController
        .startAction(name: '_CityWeatherControllerBase.removeFavCity');
    try {
      return super.removeFavCity();
    } finally {
      _$_CityWeatherControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
favCities: ${favCities},
favCitiesNames: ${favCitiesNames},
weather: ${weather},
current_page_index: ${current_page_index},
lat: ${lat},
lon: ${lon},
forecast: ${forecast},
hasWeather: ${hasWeather},
hasForecast: ${hasForecast},
isFav: ${isFav}
    ''';
  }
}
