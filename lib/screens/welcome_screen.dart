import 'package:flutter/material.dart';
import 'package:movie_ticket_booking/screens/home_screen.dart';


class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("images/background.jpeg"),
              fit: BoxFit.cover,
              opacity: 0.4,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "DP Cineplex",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Grap your tickets now",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                decoration: BoxDecoration(
                  color: Color(0xFFF7D300).withOpacity(0.9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
