import 'package:flutter/material.dart';

import 'exercise.dart';

class Workout {
  final String name;
  final List<Exercise> exercises;
  final String workoutID;
  Workout(
      {required this.name, required this.exercises, required this.workoutID});
}
