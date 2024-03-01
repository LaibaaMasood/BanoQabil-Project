import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  final void Function()? onPressed;

  GroceryItemTile(
      {super.key,
      required this.color,
      required this.itemPrice,
      required this.imagePath,
      required this.itemName,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              imagePath,
              height: 64.0,
            ),
            Text(
              itemName,
              style: GoogleFonts.notoSerif(fontSize: 20.0),
            ),
            MaterialButton(
              onPressed: () {},
              color: color[800],
              child: Text(
                'Rs. ' + itemPrice,
                style:
                    GoogleFonts.notoSerif(fontSize: 18.0, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
