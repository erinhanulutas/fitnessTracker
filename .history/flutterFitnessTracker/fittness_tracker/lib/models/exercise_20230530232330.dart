import 'package:fittness_tracker/models/workout.dart';

class Exercise {
  String? id;
  String name = "";
  int weight = -1;
  int reps = -1;
  int sets = -1;
  String workoutId = "";
  bool isCompleted = false;

  Exercise({
    this.id,
    required this.name,
    required this.weight,
    required this.reps,
    required this.sets,
    required this.workoutId,
    this.isCompleted = false,
  });

  Exercise.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json['name'];
    weight = json['weight'];
    reps = json['reps'];
    sets = json['sets'];
    workoutId = json['workoutId'];
    isCompleted = json['isCompleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['weight'] = weight;
    data['reps'] = reps;
    data['sets'] = sets;
    data['workoutId'] = workoutId;
    data['isCompleted'] = isCompleted;
    return data;
  }
}
