import 'package:flutter/material.dart';
import 'package:flutter_weather_icons/flutter_weather_icons.dart';
import 'package:wheather_app/app/shared/components/uvi_info_dialog.dart';
import 'package:wheather_app/app/shared/models/forecast_model.dart';
import 'package:wheather_app/app/shared/utils/colors.dart';

class AllCityStatsCard extends StatelessWidget {
  final ForecastModel forecast;
  // CurrentWeatherModel currentWeather;

  AllCityStatsCard({Key key, this.forecast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(12),

      // physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 2.7,
      children: [
        Container(
          padding: EdgeInsets.all(5.0),
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${forecast.daily[0].temp.max.round()} ° |  ${forecast.daily[0].temp.min.round()} °',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                'Max. | Min.',
                style: TextStyle(fontSize: 13),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${(forecast.current.windSpeed * 3.6).round()} km/h',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                'Wind Speed',
                style: TextStyle(fontSize: 13),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${forecast.current.humidity} %',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                'Humidity',
                style: TextStyle(fontSize: 13),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${forecast.current.clouds} %',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                'Cloudiness',
                style: TextStyle(fontSize: 13),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${forecast.current.pressure} hPa',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                'Pressure',
                style: TextStyle(fontSize: 13),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${forecast.current.uvi}',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'UVI',
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(width: 3),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => UVIAlertDialog(),
                        barrierDismissible: true,
                      );
                      // print('UV index. 1-2: LOW, 3-5: Medium, 6-7: High, 8-10: Very high, 11: Extreme');
                    },
                    child: Container(
                      height: 18,
                      width: 18,
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: color2, width: 2),
                          color: Colors.white),
                      child: Text(
                        '?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: color2,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
