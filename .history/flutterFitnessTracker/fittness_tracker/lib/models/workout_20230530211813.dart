import 'package:flutter/material.dart';

import 'exercise.dart';

class Workout {
  String workoutName = "test";
  String? workoutID;
  Workout({required this.workoutName, this.workoutID});

  Workout.fromJson(Map<String, dynamic> json) {
    workoutID = json["id"];
    workoutName = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = workoutID;
    data["name"] = workoutName;
    return data;
  }
}
