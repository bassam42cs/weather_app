import 'package:flutter/material.dart';
import 'package:weather_app/features/current_weather/Presentation_layer/view_model/currentWeatherScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: WeatherScreen(),


    );
  }
}

