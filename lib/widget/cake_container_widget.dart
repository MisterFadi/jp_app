import 'package:flutter/material.dart';

//import 'package:jp_app/repositories/grafiken_data.dart';

class CakeContainerWidget extends StatelessWidget {
  final Function()? onTap;

  const CakeContainerWidget({super.key, required this.onTap});

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
          child: const Padding(
            padding: EdgeInsets.all(13.0),
            // child: Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Transform.scale(
            //       scale: 1,
            //       child: Image.asset(cakeData[index].imagePath),
            //     ),
            //     const SizedBox(height: 5),
            //     Text(
            //       grafikenItem.imageTitle,
            //       style: const TextStyle(
            //         fontWeight: FontWeight.bold,
            //         color: Colors.white,
            //         fontSize: 16,
            //       ),
            //     ),
            //     const SizedBox(height: 1),
            //     Text(
            //       grafikenItem.imageSubTitle,
            //       style: const TextStyle(
            //           color: Colors.white,
            //           fontSize: 10,
            //           fontWeight: FontWeight.w400),
            //     ),
            //     const SizedBox(height: 10),
            //     Row(
            //       children: [
            //         const Text(
            //           grafikenItem.imagePrice,
            //           textAlign: TextAlign.start,
            //           style: TextStyle(
            //               color: Colors.white,
            //               fontSize: 15,
            //               fontWeight: FontWeight.w400),
            //         ),
            //         const Text(
            //           grafikenItem.imageLikes,
            //           textAlign: TextAlign.end,
            //           style: TextStyle(
            //               color: Colors.white,
            //               fontSize: 15,
            //               fontWeight: FontWeight.w400),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
          ),
        ),
      ),
    );
  }
}
