import 'package:flutter/material.dart';
import 'package:wheather_app/app/shared/models/forecast_model.dart';
import 'package:wheather_app/app/shared/utils/colors.dart';
import 'package:wheather_app/app/shared/utils/constants.dart';

class MainCityStatsCard extends StatelessWidget {
  final CurrentWeather weather;

  const MainCityStatsCard({Key key, this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var date = DateTime.fromMillisecondsSinceEpoch(weather.dt * 1000);

    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 15),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Text('${WEEKDAYS[date.weekday - 1]}, ${date.day} ${MONTHS[date.month - 1]} ${date.year}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  // width: 110,
                  child: Icon(
                    WEATHER_ICONS[weather.weather[0].icon],
                    size: 50,
                    color: color2,
                  ),
                ),
                SizedBox(width: 35),
                Text(
                  '${weather.temp.round()}°',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 15),
            Center(child: Text('${weather.weather[0].main}', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
            // SizedBox(height: 30),
            // Text('Feels like 15°')
          ],
        ),
      ),
    );
  }
}
