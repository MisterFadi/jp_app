import 'package:flutter/material.dart';

class CakeContainerWidget extends StatelessWidget {
  final Function()? onTap;
  const CakeContainerWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
          padding: const EdgeInsets.all(13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Transform.scale(
                scale: 1,
                child: const Image(
                  image: AssetImage("assets/grafiken/cat_cupcakes_3D.png"),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Mogli´s Cup",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 1),
              const Text(
                "Strawberry ice cream.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 10),
              const Text(
                "₳ 8.99",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
