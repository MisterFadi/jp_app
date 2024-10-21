import 'package:flutter/material.dart';
import 'package:jp_app/screens/home_screen.dart';

class AddToOrderPriceButton extends StatelessWidget {
  final Function()? onTap;

  const AddToOrderPriceButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
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
              Color.fromARGB(255, 218, 145, 201),
              Color.fromARGB(218, 246, 128, 242)
            ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
        child: const Padding(
          padding: EdgeInsets.fromLTRB(70, 12, 70, 12),
          child: Text("Add to order for 8.99",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
