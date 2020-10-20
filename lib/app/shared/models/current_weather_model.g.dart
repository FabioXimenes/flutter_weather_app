// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWeatherModel _$CurrentWeatherModelFromJson(Map<String, dynamic> json) {
  return CurrentWeatherModel()
    ..dt = json['dt'] as int
    ..name = json['name'] as String
    ..weather = (json['weather'] as List)
        ?.map((e) =>
            e == null ? null : WeatherModel.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..coord = json['coord'] == null
        ? null
        : Coord.fromJson(json['coord'] as Map<String, dynamic>)
    ..main = json['main'] == null
        ? null
        : Main.fromJson(json['main'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CurrentWeatherModelToJson(
        CurrentWeatherModel instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'name': instance.name,
      'weather': instance.weather?.map((e) => e?.toJson())?.toList(),
      'coord': instance.coord?.toJson(),
      'main': instance.main?.toJson(),
    };

Coord _$CoordFromJson(Map<String, dynamic> json) {
  return Coord()
    ..lat = (json['lat'] as num)?.toDouble()
    ..lon = (json['lon'] as num)?.toDouble();
}

Map<String, dynamic> _$CoordToJson(Coord instance) => <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
    };

Main _$MainFromJson(Map<String, dynamic> json) {
  return Main()
    ..temp = json['temp'] as num
    ..pressure = json['pressure'] as int
    ..humidity = json['humidity'] as int
    ..tempMax = json['temp_max'] as num
    ..tempMin = json['temp_min'] as num;
}

Map<String, dynamic> _$MainToJson(Main instance) => <String, dynamic>{
      'temp': instance.temp,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'temp_max': instance.tempMax,
      'temp_min': instance.tempMin,
    };
