import 'package:flutter/material.dart';
import 'Details.dart';
import 'Intropage.dart';
import 'TabPageSelector.dart';
import 'Slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => IntroPage(), // Default route
        '/details': (context) => DetailsPage(),
        '/TabSelect': (context) => TabSelectorPage(),
        '/Slider': (context) => SliderPage(),
        // '/third': (context) => ThirdPage(),
      },
    );
  }
}
