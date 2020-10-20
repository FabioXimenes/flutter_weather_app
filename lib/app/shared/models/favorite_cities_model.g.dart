// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_cities_model.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $FavoriteCitiesModel = BindInject(
  (i) => FavoriteCitiesModel(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FavoriteCitiesModel on _FavoriteCitiesModelBase, Store {
  final _$citiesAtom = Atom(name: '_FavoriteCitiesModelBase.cities');

  @override
  ObservableList<CurrentWeatherModel> get cities {
    _$citiesAtom.reportRead();
    return super.cities;
  }

  @override
  set cities(ObservableList<CurrentWeatherModel> value) {
    _$citiesAtom.reportWrite(value, super.cities, () {
      super.cities = value;
    });
  }

  @override
  String toString() {
    return '''
cities: ${cities}
    ''';
  }
}
