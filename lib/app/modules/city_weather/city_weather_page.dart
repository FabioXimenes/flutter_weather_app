import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wheather_app/app/shared/components/add_to_favorites_button.dart';
import 'package:wheather_app/app/shared/components/daily_stats.dart';
import 'package:wheather_app/app/shared/components/hourly_stats.dart';
import 'package:wheather_app/app/shared/components/page_dots.dart';
import 'package:wheather_app/app/shared/components/page_view_weather.dart';
import 'package:wheather_app/app/shared/utils/colors.dart';
import 'city_weather_controller.dart';

class CityWeatherPage extends StatefulWidget {
  final String cityName;
  const CityWeatherPage({Key key, @required this.cityName}) : super(key: key);

  @override
  _CityWeatherPageState createState() => _CityWeatherPageState();
}

class _CityWeatherPageState
    extends ModularState<CityWeatherPage, CityWeatherController> {
  //use 'controller' variable to access controller
  @override
  void initState() {
    controller.getAllCityStats(widget.cityName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.grey[50],
            expandedHeight: MediaQuery.of(context).size.height * 0.35,
            title: Text(
              '${widget.cityName}',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Opacity(
                opacity: 0.8,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          // TODO - Get an image from the city searched.
                          image: NetworkImage(
                              'https://source.unsplash.com/random'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Observer(builder: (_) {
            return SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Today',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800]),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 1,
                          color: color2,
                        ),
                      ],
                    ),
                    Expanded(child: SizedBox(width: 1)),
                    Container(
                      child: controller.hasWeather
                          ? AddToFavoritesButton(
                              city: controller.weather.name,
                              isFav: controller.isFav,
                              onTapAdd: controller.addFavCity,
                              onTapRemove: controller.removeFavCity
                            )
                          : Center(),
                    ),
                    SizedBox(width: 10)
                  ],
                ),
              ),
            );
          }),
          Observer(
            name: 'test',
            builder: (_) {
              return SliverToBoxAdapter(
                child: controller.hasForecast
                    ? Column(
                        children: [
                          Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: MediaQuery.of(context).size.width,
                              child: PageViewWeather(
                                  forecast: controller.forecast,
                                  currentWeather: controller.weather,
                                  onChanged: (index) {
                                    controller.setIndex(index);
                                  })),
                          SizedBox(height: 10),
                          PageDots(
                            current_index: controller.current_page_index,
                          ),
                        ],
                      )
                    : Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
              );
            },
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hourly Forecast',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800]),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 1,
                    color: color2,
                  ),
                ],
              ),
            ),
          ),
          Observer(
              name: 'daily',
              builder: (_) {
                return SliverToBoxAdapter(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: controller.hasForecast
                      ? HourlyStats(
                          forecast: controller.forecast,
                        )
                      : Center(
                          child: CircularProgressIndicator(),
                        ),
                ));
              }),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Daily Forecast',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800]),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 1,
                    color: color2,
                  ),
                ],
              ),
            ),
          ),
          Observer(
              name: 'daily',
              builder: (_) {
                return SliverToBoxAdapter(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: controller.hasForecast
                      ? DailyStats(
                          forecast: controller.forecast,
                        )
                      : Center(
                          child: CircularProgressIndicator(),
                        ),
                ));
              }),
        ],
      ),
    );
  }
}
