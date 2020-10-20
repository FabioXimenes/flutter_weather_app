import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wheather_app/app/shared/components/city_card.dart';
import 'package:wheather_app/app/shared/utils/colors.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.menu),
      ),
      body: Container(
        height: double.infinity,
        child: Column(
          children: [
            Container(
              height: size.height * 0.2,
              child: Stack(
                children: [
                  Container(
                    height: size.height * 0.2 - 27,
                    decoration: BoxDecoration(
                      color: color2,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(36),
                          bottomRight: Radius.circular(36)),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      height: 44,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 50,
                                color: color2.withOpacity(0.23)),
                          ]),
                      child: TextField(
                        onSubmitted: (_) {
                          Modular.to.pushNamed('/city/${controller.cityName}');
                        },
                        controller: _controller,
                        onChanged: controller.setCity,
                        decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              color: color2.withOpacity(0.5),
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            suffixIcon: Icon(Icons.search)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
                width: double.infinity,
                padding: EdgeInsets.only(
                  left: 5,
                ),
                child: ListTile(
                  title: Text(
                    'My List',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text('Your favorites cities...'),
                )),
            Expanded(
              child: Observer(
                  name: 'favorites',
                  builder: (_) {
                    return controller.favCities.cities.isEmpty
                        ? Center(
                            child: Text(
                                'No cities in your favorites. Search new cities...'),
                          )
                        : ListView.builder(
                            itemCount: controller.favCities.cities.length,
                            itemBuilder: (_, index) {
                              var item = controller.favCities.cities[index];
                              // TODO - Remove city from favorites by clicking on the favorite icon
                              return CityCard(
                                weather: item,
                                // onTap: controller.removeFavCity(item),
                              );
                            },
                          );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
