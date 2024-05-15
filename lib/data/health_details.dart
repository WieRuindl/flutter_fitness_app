import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/models/health_model.dart';

class HealthDetails {
  final data = [
    HealthModel(iconPath: 'assets/icons/burn.png', color: Colors.orange, value: '305', title: 'Calories burned',),
    HealthModel(iconPath: 'assets/icons/steps.png', color: Colors.orange, value: '10,983', title: 'Steps',),
    HealthModel(iconPath: 'assets/icons/distance.png', color: Colors.orange, value: '7km', title: 'Distance',),
    HealthModel(iconPath: 'assets/icons/sleep.png', color: Colors.orange, value: '7h48m', title: 'Sleep',),
  ];
}