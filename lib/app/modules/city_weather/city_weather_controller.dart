import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wheather_app/app/shared/models/current_weather_model.dart';
import 'package:wheather_app/app/shared/models/favorite_cities_model.dart';
import 'package:wheather_app/app/shared/models/forecast_model.dart';
import 'package:wheather_app/app/shared/repositories/forecast_repository.dart';
import 'package:wheather_app/app/shared/repositories/interfaces/local_storage_interface.dart';
import 'package:wheather_app/app/shared/repositories/weather_repository.dart';

part 'city_weather_controller.g.dart';

@Injectable()
class CityWeatherController = _CityWeatherControllerBase
    with _$CityWeatherController;

abstract class _CityWeatherControllerBase with Store {
  final ILocalStorage _storage = Modular.get();
  final WeatherRepository weatherRepository;
  final ForecastRepository forecastRepository;
  
  @observable
  FavoriteCitiesModel favCities = Modular.get();
  
  @observable
  List<String> favCitiesNames = <String>[].asObservable();

  @observable
  CurrentWeatherModel weather;

  @observable
  int current_page_index = 0;

  @observable
  double lat;

  @observable
  double lon;

  @observable
  ForecastModel forecast;

  @observable
  bool hasWeather = false;

  @observable
  bool hasForecast = false;

  @computed
  bool get isFav => favCities.cities.any((element) => element.name == weather.name);

  _CityWeatherControllerBase(this.weatherRepository, this.forecastRepository){
    init();
  }

  @action
  init() async {
    List<String> citiesNames = await _storage.get('citiesNames');
    if (citiesNames == null){
      favCitiesNames = <String>[].asObservable();
    } else {
      favCitiesNames = citiesNames.asObservable();
    }


  }

  @action
  Future getAllCityStats(cityName) async{
    
    weather = await weatherRepository.getWeatherInfo(cityName);
    lat = weather.coord.lat;
    lon = weather.coord.lon;
    hasWeather = true;
    
    forecast = await forecastRepository.getAllStats(lat, lon);
    hasForecast = true;
  }

  @action
  void setIndex(index) {
    current_page_index = index;
  }

  // @action
  // void setFav() => isFav = !isFav;

  @action
  void addFavCity() {
    favCities.cities.add(weather);
    favCitiesNames.add(weather.name);
    _storage.put('citiesNames', favCitiesNames);
  }

  @action
  void removeFavCity() {
    favCities.cities.removeWhere((element) => element.name == weather.name);
    favCitiesNames.removeWhere((cityName) => cityName == weather.name);
    _storage.put('citiesNames', favCitiesNames);
  }

}
