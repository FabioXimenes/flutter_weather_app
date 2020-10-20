import 'package:json_annotation/json_annotation.dart';
import 'package:wheather_app/app/shared/models/weather_model.dart';

part 'current_weather_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CurrentWeatherModel {
  CurrentWeatherModel();
  
  int dt;
  String name;
  List<WeatherModel> weather;
  Coord coord;
  Main main;

  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) => _$CurrentWeatherModelFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentWeatherModelToJson(this);
  
}

@JsonSerializable(explicitToJson: true)
class Coord {
  Coord();
  double lat;
  double lon;

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
  Map<String, dynamic> toJson() => _$CoordToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Main {
  Main();
  num temp;
  int pressure;
  int humidity;
  
  @JsonKey(name: 'temp_max')
  num tempMax;
  
  @JsonKey(name: 'temp_min')
  num tempMin;  

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
  Map<String, dynamic> toJson() => _$MainToJson(this);

}