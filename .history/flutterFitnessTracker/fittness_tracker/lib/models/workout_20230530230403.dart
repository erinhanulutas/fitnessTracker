import 'package:flutter/material.dart';

import 'exercise.dart';

class Workout {
  String workoutName = "test";
  String? exerciseID;
  Workout({
    required this.workoutName,
    this.exerciseID,
  });

  Workout.fromJson(Map<String, dynamic> json) {
    exerciseID = json["id"];
    workoutName = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = exerciseID;
    data["name"] = workoutName;

    return data;
  }
}
