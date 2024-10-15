import 'package:flutter/material.dart';
import 'package:jp_app/screens/drawer_screen.dart';

class AddToOrderButton extends StatelessWidget {
  const AddToOrderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DrawerScreen()));
      },
      child: Container(
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(218, 149, 109, 212),
                blurRadius: 10,
                offset: Offset(1, 4), // Shadow position
              ),
            ],
            borderRadius: BorderRadius.circular(9),
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 206, 135, 220),
              Color.fromARGB(218, 149, 109, 212)
            ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
        child: const Padding(
          padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
          child: Text("Add to order",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
/*
class DrawerScreenWidget {
  String imagePath;
  String imageTitle;
  String imageSubTitle;
  String imagePrice;
  String imageLikes;
  String imageDescription;
  String imageIngredients;
  String imageReviews;
  String title;
  String imageDate;
  String description;
  String imagesubtitleDate;
  String subtitle;
  String price;
  String likes;
  String ingredients;
  String reviews;

  DrawerScreenWidget({
    required this.imagePath,
    required this.imageTitle,
    required this.imageSubTitle,
    required this.imagePrice,
    required this.imageLikes,
    required this.imageDescription,
    required this.imageIngredients,
    required this.imageReviews,
    required this.title,
    required this.imageDate,
    required this.description,
    required this.subtitle,
    required this.price,
    required this.likes,
    required this.ingredients,
    required this.reviews,
  });
}
*/