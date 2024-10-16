import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app/buttons/order_now_button.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({
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
            top: 50,
            left: 70,
            child: Transform.scale(
              scale: 1.5,
              child: const Image(
                image: AssetImage("assets/grafiken/cat_cupcakes_3D.png"),
              ),
            ),
          ),
          Positioned(
            top: 280,
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
                        SizedBox(height: 2),
                        Text(
                          "Mogli´s Cup",
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
