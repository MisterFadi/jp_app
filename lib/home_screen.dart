import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:jp_app/order_new_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          const Image(
            image: AssetImage("assets/background/bg_startscreen.png"),
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 260,
            left: 120,
            child: Transform.scale(
              scale: 2.3,
              child: const Image(
                image: AssetImage("assets/grafiken/chick_cupcakes_3D.png"),
              ),
            ),
          ),
          Positioned(
            top: 450,
            left: 1,
            child: Transform.scale(
              scale: 1.0,
              child: const Image(
                image: AssetImage("assets/details/T2.png"),
              ),
            ),
          ),
          Positioned(
            top: 570,
            left: 35,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(
                  height: 210,
                  width: 330,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 0.2),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white.withOpacity(0.1),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 2),
                        Text(
                          "Feeling Snackish Today?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 23,
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
                        OrderNowButton(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
