import 'package:flutter/material.dart';

class GraphPointModel {
  final double x;
  final double y;

  const GraphPointModel({required this.x, required this.y});
}

class BarGraphModel {
  final String label;
  final Color color;
  final List<GraphPointModel> points;

  const BarGraphModel({
    required this.label,
    required this.color,
    required this.points,
  });
}
