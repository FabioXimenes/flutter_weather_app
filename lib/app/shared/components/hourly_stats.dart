import 'package:flutter/material.dart';
import 'package:wheather_app/app/shared/models/forecast_model.dart';
import 'package:wheather_app/app/shared/utils/constants.dart';

class HourlyStats extends StatelessWidget {
  final ForecastModel forecast;

  HourlyStats({Key key, this.forecast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.1,
      alignment: Alignment.center,
      // color: Colors.lightBlue[100 * (1 % 9)],
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 24,
        itemBuilder: (context, index) {
          // print(forecast.daily.length);
          var date = DateTime.fromMillisecondsSinceEpoch(
              forecast.hourly[index].dt * 1000);

          return Container(
            width: size.width * 0.2,
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5), blurRadius: 3, color: Colors.grey),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 15,
                ),
                // Text(
                //   '${WEEKDAYS[date.weekday - 1]}, ${date.day}',
                //   // '',
                //   style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                // ),
                Text(
                  '${date.hour}h',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 2),
                      height: 25,
                      width: 25,
                      child: Icon(
                          WEATHER_ICONS[forecast.hourly[index].weather[0].icon],
                          size: 20),
                    ),
                    Text('${forecast.hourly[index].temp.round()}°',
                        style: TextStyle(fontSize: 12)),
                    // Text('${forecast.hourly[index].temp.min.round()}°',
                    //     style: TextStyle(fontSize: 12)),
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
