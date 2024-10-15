import 'package:flutter/material.dart';
import 'package:jp_app/screens/choose_screen.dart';

class OrderNowButton extends StatelessWidget {
  const OrderNowButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ChooseScreen()));
      },
      child: Container(
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 248, 150, 183),
                blurRadius: 10,
                offset: Offset(1, 4), // Shadow position
              ),
            ],
            borderRadius: BorderRadius.circular(9),
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 243, 111, 219),
              Color.fromARGB(218, 200, 168, 117)
            ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
        child: const Padding(
          padding: EdgeInsets.fromLTRB(56, 12, 56, 12),
          child: Text("Order Now",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
