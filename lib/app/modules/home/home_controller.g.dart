// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(i<WeatherRepository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$favCitiesAtom = Atom(name: '_HomeControllerBase.favCities');

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

  final _$favCitiesNamesAtom = Atom(name: '_HomeControllerBase.favCitiesNames');

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

  final _$cityNameAtom = Atom(name: '_HomeControllerBase.cityName');

  @override
  String get cityName {
    _$cityNameAtom.reportRead();
    return super.cityName;
  }

  @override
  set cityName(String value) {
    _$cityNameAtom.reportWrite(value, super.cityName, () {
      super.cityName = value;
    });
  }

  final _$initAsyncAction = AsyncAction('_HomeControllerBase.init');

  @override
  Future init() {
    return _$initAsyncAction.run(() => super.init());
  }

  final _$getCurrentWeatherAsyncAction =
      AsyncAction('_HomeControllerBase.getCurrentWeather');

  @override
  Future<CurrentWeatherModel> getCurrentWeather(String cityName) {
    return _$getCurrentWeatherAsyncAction
        .run(() => super.getCurrentWeather(cityName));
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void setCity(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setCity');
    try {
      return super.setCity(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeFavCity(CurrentWeatherModel model) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.removeFavCity');
    try {
      return super.removeFavCity(model);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
favCities: ${favCities},
favCitiesNames: ${favCitiesNames},
cityName: ${cityName}
    ''';
  }
}
