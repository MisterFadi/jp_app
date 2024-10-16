//import 'dart:ui';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app/buttons/order_now_button.dart';
import 'package:jp_app/models/grafiken_item_class.dart';

class DrawerScreen extends StatelessWidget {
  final GrafikenItem grafikenItem;

  const DrawerScreen({
    super.key,
    required this.grafikenItem,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            color: Color.fromARGB(255, 48, 48, 48),
          ),
          height: 750,
        ),
        Positioned(
          top: -60,
          left: 70,
          child: Transform.scale(
            scale: 1.5,
            child: const Image(
              image: AssetImage("assets/grafiken/cat_cupcakes_3D.png"),
            ),
          ),
        ),
        Positioned(
          top: 180,
          left: 35,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
              child: Container(
                height: 340,
                width: 330,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 0.2),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white.withOpacity(0.005),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("addsfdsfds"),
                      SizedBox(height: 2),
                      Text(
                        "Mogli´s Cup",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Explore Angi's most popular snack selection \n and get instantly happy.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "₳ 8.99",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 30),
                      Divider(
                        thickness: 0.5,
                      ),
                      SizedBox(height: 30),
                      OrderNowButton(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
