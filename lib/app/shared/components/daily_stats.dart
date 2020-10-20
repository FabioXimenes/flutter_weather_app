import 'package:flutter/material.dart';
import 'package:wheather_app/app/shared/models/forecast_model.dart';
import 'package:wheather_app/app/shared/utils/constants.dart';

class DailyStats extends StatelessWidget {
  final ForecastModel forecast;

  DailyStats({Key key, this.forecast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.15,
      alignment: Alignment.center,
      // color: Colors.lightBlue[100 * (1 % 9)],
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: forecast.daily.length,
        itemBuilder: (context, index) {
          // print(forecast.daily.length);
          var date = DateTime.fromMillisecondsSinceEpoch(
              forecast.daily[index].dt * 1000);

          return Container(
            width: size.width * 0.27,
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 3,
                    color: Colors.grey
                  ),
                ]),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  '${WEEKDAYS[date.weekday - 1]}, ${date.day}',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  height: 50,
                  width: 50,
                  child: Icon(
                      WEATHER_ICONS[forecast.daily[index].weather[0].icon],
                      size: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('${forecast.daily[index].temp.max.round()}°',
                        style: TextStyle(fontSize: 12)),
                    Text('${forecast.daily[index].temp.min.round()}°',
                        style: TextStyle(fontSize: 12)),
                    // Text('20°',
                    //     style: TextStyle(fontSize: 10)),
                    // Text('20°',
                    //     style: TextStyle(fontSize: 10)),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
