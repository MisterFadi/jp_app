import 'package:flutter/material.dart';
import 'package:jp_app/models/grafiken_item_class.dart';

class CakeContainerWidget extends StatelessWidget {
  final Function()? onTap;
  final GrafikenItem grafikenItem;

  const CakeContainerWidget({
    super.key,
    required this.onTap,
    required this.grafikenItem,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 260,
          width: 180,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 0.5),
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(colors: [
                Color.fromARGB(255, 155, 170, 236),
                Color.fromARGB(218, 129, 101, 171)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(grafikenItem.imagePath),
                ),
                Text(
                  grafikenItem.imageTitle,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  grafikenItem.imageSubTitle,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 170, 162, 162), fontSize: 11),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      grafikenItem.imagePrice,
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(width: 60),
                    const Icon(Icons.favorite_border_sharp,
                        size: 14, color: Color.fromARGB(255, 170, 162, 162)),
                    const SizedBox(width: 2),
                    Text(
                      grafikenItem.imageLikes,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 170, 162, 162)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
