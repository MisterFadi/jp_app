import 'dart:ui';
import 'package:flutter/material.dart';

class AllCategoriesWidget extends StatelessWidget {
  const AllCategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildCategoryButton("🍽️ All categories", width: 150, height: 38),
            _buildSaltyButton("Salty", width: 90, height: 38),
            _buildCategoryButton("Sweet", width: 90, height: 38),
            _buildCategoryButton("Drinks", width: 90, height: 38),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(String title,
      {required double width, required double height}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.white, width: 0),
            ),
            child: SizedBox(
              width: width,
              height: height,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSaltyButton(String title,
      {required double width, required double height}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(1.0),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.white, width: 0.2),
            ),
            child: SizedBox(
              width: width,
              height: height,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
