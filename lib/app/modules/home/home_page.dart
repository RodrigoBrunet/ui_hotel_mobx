import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hotel_mobx/app/widgets/destino_carousel.dart';
import 'package:hotel_mobx/app/widgets/hotel_carousel.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = ""}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  int selectedIndex = 0;
  int currentTab = 0;

  Widget _buildIcon(int index) {
    return Observer(builder: (_) {
      return GestureDetector(
        onTap: () {
          controller.selectedIndex = index;
        },
        child: Container(
          height: 60.0,
          width: 60,
          decoration: BoxDecoration(
            color: controller.selectedIndex == index
                ? Theme.of(context).accentColor
                : Color(0xFFE7EBEE),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Icon(
            controller.icons[index],
            size: 25.0,
            color: Theme.of(context).primaryColor,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
          body: SafeArea(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 120.0),
                  child: Text(
                    'What you would like to find ?',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Observer(builder: (_) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: controller.icons
                        .asMap()
                        .entries
                        .map(
                          (MapEntry map) => _buildIcon(map.key),
                        )
                        .toList(),
                  );
                }),
                SizedBox(
                  height: 20.0,
                ),
                DestinoCarousel(),
                HotelCarousel(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentTabIndex,
            onTap: (value) {
              setState(() {
                controller.currentTabIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.local_pizza,
                  size: 30,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.access_alarm,
                  size: 30,
                ),

                // backgroundImage: NetworkImage(''),

                label: '',
              ),
            ],
          )),
    );
  }
}
