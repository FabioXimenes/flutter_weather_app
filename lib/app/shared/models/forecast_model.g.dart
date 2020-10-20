// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastModel _$ForecastModelFromJson(Map<String, dynamic> json) {
  return ForecastModel(
    (json['lat'] as num)?.toDouble(),
    (json['lon'] as num)?.toDouble(),
    json['current'] == null
        ? null
        : CurrentWeather.fromJson(json['current'] as Map<String, dynamic>),
    (json['daily'] as List)
        ?.map(
            (e) => e == null ? null : Daily.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )..hourly = (json['hourly'] as List)
      ?.map(
          (e) => e == null ? null : Hourly.fromJson(e as Map<String, dynamic>))
      ?.toList();
}

Map<String, dynamic> _$ForecastModelToJson(ForecastModel instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'current': instance.current?.toJson(),
      'daily': instance.daily?.map((e) => e?.toJson())?.toList(),
      'hourly': instance.hourly?.map((e) => e?.toJson())?.toList(),
    };

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) {
  return CurrentWeather()
    ..dt = json['dt'] as int
    ..temp = (json['temp'] as num)?.toDouble()
    ..humidity = json['humidity'] as int
    ..clouds = json['clouds'] as int
    ..pressure = json['pressure'] as int
    ..uvi = (json['uvi'] as num)?.toDouble()
    ..visibility = (json['visibility'] as num)?.toDouble()
    ..weather = (json['weather'] as List)
        ?.map((e) =>
            e == null ? null : WeatherModel.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..feelsLike = (json['feels_like'] as num)?.toDouble()
    ..windSpeed = (json['wind_speed'] as num)?.toDouble()
    ..dewPoint = (json['dew_point'] as num)?.toDouble();
}

Map<String, dynamic> _$CurrentWeatherToJson(CurrentWeather instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'temp': instance.temp,
      'humidity': instance.humidity,
      'clouds': instance.clouds,
      'pressure': instance.pressure,
      'uvi': instance.uvi,
      'visibility': instance.visibility,
      'weather': instance.weather?.map((e) => e?.toJson())?.toList(),
      'feels_like': instance.feelsLike,
      'wind_speed': instance.windSpeed,
      'dew_point': instance.dewPoint,
    };

Daily _$DailyFromJson(Map<String, dynamic> json) {
  return Daily()
    ..dt = json['dt'] as int
    ..temp = json['temp'] == null
        ? null
        : Temp.fromJson(json['temp'] as Map<String, dynamic>)
    ..weather = (json['weather'] as List)
        ?.map((e) =>
            e == null ? null : WeatherModel.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..humidity = json['humidity'] as int
    ..windSpeed = (json['wind_speed'] as num)?.toDouble();
}

Map<String, dynamic> _$DailyToJson(Daily instance) => <String, dynamic>{
      'dt': instance.dt,
      'temp': instance.temp?.toJson(),
      'weather': instance.weather?.map((e) => e?.toJson())?.toList(),
      'humidity': instance.humidity,
      'wind_speed': instance.windSpeed,
    };

Hourly _$HourlyFromJson(Map<String, dynamic> json) {
  return Hourly()
    ..dt = json['dt'] as int
    ..temp = (json['temp'] as num)?.toDouble()
    ..pop = (json['pop'] as num)?.toDouble()
    ..weather = (json['weather'] as List)
        ?.map((e) =>
            e == null ? null : WeatherModel.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$HourlyToJson(Hourly instance) => <String, dynamic>{
      'dt': instance.dt,
      'temp': instance.temp,
      'pop': instance.pop,
      'weather': instance.weather?.map((e) => e?.toJson())?.toList(),
    };

Temp _$TempFromJson(Map<String, dynamic> json) {
  return Temp()
    ..day = (json['day'] as num)?.toDouble()
    ..min = (json['min'] as num)?.toDouble()
    ..max = (json['max'] as num)?.toDouble()
    ..night = (json['night'] as num)?.toDouble()
    ..eve = (json['eve'] as num)?.toDouble()
    ..morn = (json['morn'] as num)?.toDouble();
}

Map<String, dynamic> _$TempToJson(Temp instance) => <String, dynamic>{
      'day': instance.day,
      'min': instance.min,
      'max': instance.max,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };
