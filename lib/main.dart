import 'package:flutter/material.dart';

// a) Abstract class Vehicle
void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]}
  ];
  Map<String, double> studentAverages = {};
  for (var student in students) {
    String name = student["name"];
    List<int> scores = List<int>.from(student["scores"]);
    double average = scores.reduce((sum, score) => sum + score) / scores.length;
    studentAverages[name] = double.parse(average.toStringAsFixed(2));
  }
  var sortedAverages = Map.fromEntries(
      studentAverages.entries.toList()
        ..sort((a, b) => b.value.compareTo(a.value))
  );
  print("{");
  sortedAverages.forEach((name, average) {
    print('  "$name": $average,');
  });
  print("}");
}


