import 'package:flutter/material.dart';
import 'package:jp_app/buttons/add_to_order_button.dart';
import 'package:jp_app/widget/cake_container_widget.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
          const Positioned(
            top: 220,
            left: 30,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Angi´s Yummy Burger",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Delish vegan burger \nthat tastes like heaven",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "₳ 8.99",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 60),
                  // -----             -- - - - - -- - - -- - - -- - - - - -- -- - - - - --- - - - - -actions:
                  AddToOrderButton(),
                ],
              ),
            ),
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
            top: 530,
            left: 35,
            child: Text(
              "We Recommend",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
          const CakeContainerWidget(),
        ],
      ),
    );
  }
}
