import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/models/graph_model.dart';

class BarGraphModel {
  final String label;
  final Color color;
  final List<GraphModel> graph;

  BarGraphModel({required this.label, required this.color, required this.graph});
}