import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: 80.0, right: 80.0, bottom: 40.0, top: 20.0),
          child: Image.asset(
            'assets/images/cart_logo.png',
            width: 180.0,
            height: 180.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 80.0, right: 80.0, bottom: 40.0, top: 20.0),
          child: Text('We deliver groceries at your doorstep',
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              )),
        ),
        SizedBox(
          height: 24.0,
        ),
        Text(
          'Fresh items everyday',
          style: TextStyle(color: Colors.grey[600]),
        ),
        Spacer(),
        GestureDetector(
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return HomePage();
              },
            ),
          ),
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12)),
              padding: EdgeInsets.all(24.0),
              child: Text(
                'Get started',
                style: TextStyle(color: Colors.white),
              )),
        ),
      ],
    ));
  }
}
