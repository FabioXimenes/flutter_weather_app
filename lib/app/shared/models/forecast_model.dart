import 'package:json_annotation/json_annotation.dart';
import 'package:wheather_app/app/shared/models/weather_model.dart';

part 'forecast_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ForecastModel {
  double lat;
  double lon;

  CurrentWeather current;
  List<Daily> daily;
  List<Hourly> hourly;

  ForecastModel(this.lat, this.lon, this.current, this.daily);

  factory ForecastModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastModelFromJson(json);
  Map<String, dynamic> toJson() => _$ForecastModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CurrentWeather {
  CurrentWeather();
  int dt;
  double temp;
  int humidity;
  int clouds;
  int pressure;
  double uvi;
  double visibility;
  List<WeatherModel> weather;

  @JsonKey(name: 'feels_like')
  double feelsLike;

  @JsonKey(name: 'wind_speed')
  double windSpeed;

  @JsonKey(name: 'dew_point')
  double dewPoint;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentWeatherToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Daily {
  Daily();

  int dt;
  Temp temp;
  List<WeatherModel> weather;
  int humidity;
  
  @JsonKey(name: 'wind_speed')
  double windSpeed;
  

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);
  Map<String, dynamic> toJson() => _$DailyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Hourly {
  Hourly();

  int dt;
  double temp;
  double pop;
  List<WeatherModel> weather;

  factory Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);
  Map<String, dynamic> toJson() => _$HourlyToJson(this);

}

@JsonSerializable(explicitToJson: true)
class Temp {
  Temp();

  double day;
  double min;
  double max;
  double night;
  double eve;
  double morn;

  factory Temp.fromJson(Map<String, dynamic> json) => _$TempFromJson(json);
  Map<String, dynamic> toJson() => _$TempToJson(this);
}
