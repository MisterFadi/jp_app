//import 'dart:ui';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app/buttons/add_to_order_price_button.dart';
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
            child: Image(
              image: AssetImage(grafikenItem.imagePath),
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
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(grafikenItem.imageLikes),
                      const SizedBox(height: 2),
                      Text(
                        grafikenItem.imageTitle,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        grafikenItem.imageDescription,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        grafikenItem.imagePrice,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 30),
                      const Divider(
                        thickness: 0.5,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(grafikenItem.imageDescription,
                                    style:
                                        const TextStyle(color: Colors.white)),
                                const SizedBox(height: 8),
                                const Row(
                                  children: [
                                    Icon(Icons.abc, color: Colors.white),
                                    SizedBox(width: 4),
                                    Icon(Icons.abc, color: Colors.white),
                                    SizedBox(width: 4),
                                    Icon(Icons.abc, color: Colors.white),
                                    SizedBox(width: 4),
                                    Icon(Icons.abc, color: Colors.white)
                                  ],
                                )
                              ]),
                          const Expanded(child: SizedBox()),
                          const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Reviews",
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    SizedBox(width: 2),
                                    Icon(Icons.star,
                                        color: Colors.white, size: 16),
                                    SizedBox(width: 2),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    SizedBox(width: 2),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    SizedBox(width: 2),
                                    Icon(
                                      Icons.star_outline,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    SizedBox(width: 16),
                                    Text(
                                      "4.0",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    )
                                  ],
                                )
                              ]),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

        // const CounterButton(),
        Positioned(
          top: 640,
          left: 50,
          child: AddToOrderPriceButton(
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
