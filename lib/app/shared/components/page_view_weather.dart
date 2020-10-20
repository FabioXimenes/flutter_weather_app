import 'package:flutter/material.dart';
import 'package:wheather_app/app/shared/components/all_city_stats_card.dart';
import 'package:wheather_app/app/shared/components/main_city_stats_card.dart';
import 'package:wheather_app/app/shared/models/current_weather_model.dart';
import 'package:wheather_app/app/shared/models/forecast_model.dart';

class PageViewWeather extends StatelessWidget {
  
  ForecastModel forecast;
  CurrentWeatherModel currentWeather;
  ValueChanged<int> onChanged;
  
  PageViewWeather({this.onChanged, this.currentWeather, this.forecast});

  @override
  Widget build(BuildContext context) {
    return PageView(
      onPageChanged: onChanged,
      children: [
        MainCityStatsCard(weather: forecast.current),
        AllCityStatsCard(forecast: forecast),
        // HourlyCityStatsCard.withSampleData(),
        // HourlyCityStatsCard(hourlyWeather: forecast.hourly)
      ],
    );
  }
}
