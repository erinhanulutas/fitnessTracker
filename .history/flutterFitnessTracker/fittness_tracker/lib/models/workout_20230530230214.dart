import 'package:flutter/material.dart';

import 'exercise.dart';

class Workout {
  String workoutName = "test";
  String? workoutID;
  String? exerciseID;
  Workout({required this.workoutName, this.workoutID, this.exerciseID});

  Workout.fromJson(Map<String, dynamic> json) {
    workoutID = json["id"];
    workoutName = json["name"];
    exerciseID = json["exeID"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = workoutID;
    data["name"] = workoutName;
    data["exeID"] = exerciseID;
    return data;
  }
}
