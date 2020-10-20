import 'city_weather_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'city_weather_page.dart';

class CityWeatherModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $CityWeatherController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/:cityName',
            child: (_, args) =>
                CityWeatherPage(cityName: args.params['cityName'])),
      ];

  static Inject get to => Inject<CityWeatherModule>.of();
}
