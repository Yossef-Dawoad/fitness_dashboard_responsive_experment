import 'package:fitness_dashboard_responsive/models/graph_model.dart';
import 'package:flutter/material.dart';

class BarGraphDataService {
  final data = [
    const BarGraphModel(
      label: "Activity Level",
      color: Color(0xFFFEB95A),
      points: [
        GraphPointModel(x: 0, y: 8),
        GraphPointModel(x: 1, y: 10),
        GraphPointModel(x: 2, y: 7),
        GraphPointModel(x: 3, y: 4),
        GraphPointModel(x: 4, y: 4),
        GraphPointModel(x: 5, y: 6),
      ],
    ),
    const BarGraphModel(
      label: "Nutrition",
      color: Color(0xFFF2C8ED),
      points: [
        GraphPointModel(x: 0, y: 8),
        GraphPointModel(x: 1, y: 10),
        GraphPointModel(x: 2, y: 9),
        GraphPointModel(x: 3, y: 6),
        GraphPointModel(x: 4, y: 6),
        GraphPointModel(x: 5, y: 7),
      ],
    ),
    const BarGraphModel(
      label: "Hydration Level",
      color: Color(0xFF20AEF3),
      points: [
        GraphPointModel(x: 0, y: 7),
        GraphPointModel(x: 1, y: 10),
        GraphPointModel(x: 2, y: 7),
        GraphPointModel(x: 3, y: 4),
        GraphPointModel(x: 4, y: 4),
        GraphPointModel(x: 5, y: 10),
      ],
    ),
  ];

  final label = ['M', 'T', 'W', 'T', 'F', 'S'];
}
