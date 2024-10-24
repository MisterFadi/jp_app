import 'package:flutter/material.dart';
import 'package:jp_app/buttons/add_to_order_button.dart';
import 'package:jp_app/repositories/grafiken_data.dart';
import 'package:jp_app/screens/drawer_screen.dart';
import 'package:jp_app/widget/all_categories_widget.dart';
import 'package:jp_app/widget/cake_container_widget.dart';

class ChooseScreen extends StatefulWidget {
  const ChooseScreen({
    super.key,
  });

  @override
  State<ChooseScreen> createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          const Image(
            image: AssetImage("assets/background/bg_mainscreen.png"),
            fit: BoxFit.cover,
          ),
          const Positioned(
            top: 68,
            left: 18,
            child: Text(
              "Choose Your Favorite \nSnack",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          const Positioned(top: 150, left: 10, child: AllCategoriesWidget()),
          Positioned(
            top: 230,
            left: 30,
            child: Transform.scale(
              scale: 1,
              child: const Image(
                image: AssetImage("assets/details/Top_Card.png"),
                opacity: AlwaysStoppedAnimation(0.6),
              ),
            ),
          ),
          Positioned(
            top: 220,
            left: 30,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "Angi´s Yummy Burger",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Delish vegan burger \nthat tastes like heaven",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "₳ 13.99",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 50),
                  Positioned(
                    top: 560,
                    left: 20,
                    child: AddToOrderButton(
                      onTap: () {
                        //   showModalBottomSheet(
                        //       context: context,
                        //       isScrollControlled: true,
                        //       builder: (context) =>
                        //           DrawerScreen(grafikenItem: cakeData[2]));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 243,
            left: 315,
            child: Transform.scale(
              scale: 1.0,
              child: const Image(
                image: AssetImage("assets/extra/star.png"),
              ),
            ),
          ),
          Positioned(
            top: 240,
            left: 330,
            child: Transform.scale(
                scale: 1.0,
                child: const Text(
                  "4.8",
                  style: TextStyle(color: Colors.grey),
                )),
          ),
          Positioned(
            top: 260,
            left: 150,
            child: Transform.scale(
              scale: 1.0,
              child: const Image(
                image: AssetImage("assets/grafiken/Burger_3D.png"),
              ),
            ),
          ),
          const Positioned(
            top: 525,
            left: 30,
            child: Text(
              "We Recommend",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          Positioned(
            top: 564,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SizedBox(
                width: 520,
                height: 264,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cakeData.length,
                  itemBuilder: (context, index) {
                    return CakeContainerWidget(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (context) =>
                              DrawerScreen(grafikenItem: cakeData[index]),
                        );
                      },
                      grafikenItem: cakeData[index],
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
