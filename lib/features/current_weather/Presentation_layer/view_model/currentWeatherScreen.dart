import 'package:flutter/material.dart';

import 'weather_details.dart';
class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const Text(
              'City Name',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.wb_sunny, size: 50, color: Colors.orange),
                const SizedBox(width: 8),
                const Text(
                  'Sunny',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
            const SizedBox(height: 16),

            const Text(
              '25°C',
              style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  WeatherDetailCard('Wind', '10 km/h', Icons.air),
                  WeatherDetailCard('Humidity', '70%', Icons.water_drop),
                  WeatherDetailCard('Pressure', '1015 hPa', Icons.compress),
                  WeatherDetailCard('Clouds', '20%', Icons.cloud),
                ],
              ),
            ),
            // توقيت التحديث
            const Text(
              'Updated: 12:00 PM',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
  
  }