import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wheather_app/app/shared/models/current_weather_model.dart';
import 'package:wheather_app/app/shared/models/favorite_cities_model.dart';
import 'package:wheather_app/app/shared/repositories/interfaces/local_storage_interface.dart';
import 'package:wheather_app/app/shared/repositories/weather_repository.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {

  final ILocalStorage _storage = Modular.get();
  
  CurrentWeatherModel weather;
  WeatherRepository weatherRepository;

  @observable
  FavoriteCitiesModel favCities = Modular.get();

  @observable
  List<String> favCitiesNames = <String>[].asObservable();

  @observable
  String cityName;

  _HomeControllerBase(this.weatherRepository){
    init();
  }
  
  @action
  void setCity(String value) => cityName = value;

  @action
  init() async {
    List<String> citiesNames = await _storage.get('citiesNames');
    if (citiesNames == null){
      favCitiesNames = <String>[].asObservable();
    } else {
      favCitiesNames = citiesNames.asObservable();
    }

    if (favCitiesNames.length > 0){
      print(favCitiesNames.length);
      favCitiesNames.forEach((element) async {
        favCities.cities.add(await getCurrentWeather(element));
      });
    }

  }

  @action
  removeFavCity(CurrentWeatherModel model){
    favCities.cities.removeWhere((element) => element.name == model.name);
  }

  @action
  Future<CurrentWeatherModel> getCurrentWeather(String cityName) async{
    return await weatherRepository.getWeatherInfo(cityName);
  }
}
