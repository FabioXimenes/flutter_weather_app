import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wheather_app/app/shared/models/current_weather_model.dart';
import 'package:wheather_app/app/shared/utils/constants.dart';

class CityCard extends StatelessWidget {
  final CurrentWeatherModel weather;
  final Function onTap;
  const CityCard({Key key, this.weather, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
        // boxShadow: [BoxShadow(offset: Offset(0, 1), blurRadius: 2, color: color2)]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Modular.to.pushNamed('/city/${weather.name}');
                },
                child: Text(
                  '${weather.name}',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              GestureDetector(
                // onTap: onTap,

                child: Icon(
                  Icons.favorite,
                  size: 18,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(WEATHER_ICONS[weather.weather[0].icon]),
                          SizedBox(
                            height: 9,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        '${weather.main.temp.round()}°',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Icon(Icons.keyboard_arrow_up, size: 17),
                      Text(
                        '${weather.main.tempMax.round()}°',
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.keyboard_arrow_down, size: 17),
                      Text(
                        '${weather.main.tempMin.round()}°',
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),

          // Text('Humidity: ${weather.humidity} %'),
          // Text('Wind: ${weather.windSpeed}'),
          // Text('Weather: ${weather.weather}'),
        ],
      ),
    );
  }
}

// class CityCard extends StatelessWidget {

//   final WeatherModel weather;

//   const CityCard({Key key, this.weather}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width * 0.85,
//       height: 20,
//       padding: EdgeInsets.all(15.0),
//       decoration: BoxDecoration(
//         color: Colors.grey,
//         borderRadius: BorderRadius.circular(10),
//       ),
//     );
//   }
// }
