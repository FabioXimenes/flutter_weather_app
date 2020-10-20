import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wheather_app/app/shared/models/current_weather_model.dart';

part 'favorite_cities_model.g.dart';

@Injectable()
class FavoriteCitiesModel = _FavoriteCitiesModelBase with _$FavoriteCitiesModel;

abstract class _FavoriteCitiesModelBase with Store {

  @observable
  ObservableList<CurrentWeatherModel> cities = <CurrentWeatherModel>[].asObservable();

}
