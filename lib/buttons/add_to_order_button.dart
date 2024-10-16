import 'package:flutter/material.dart';

class AddToOrderButton extends StatelessWidget {
  final Function()? onTap;

  const AddToOrderButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return
        //GestureDetector(
        //   onTap: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => DrawerScreen(grafikenItem: cakeData[2]),
        //       ),
        //     );
        //   },
        //   child:
        Container(
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
    );
  }
}
