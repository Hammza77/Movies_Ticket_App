import 'package:flutter/material.dart';
import 'package:movie_ticket_booking/screens/welcome_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF212429),
      ),
      home: WelcomeScreen(),
    );
  }
}
