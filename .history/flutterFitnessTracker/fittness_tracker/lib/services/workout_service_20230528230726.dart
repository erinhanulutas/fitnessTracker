import 'package:fittness_tracker/models/exercise.dart';

class WorkoutService {
  WorkoutService({required this.exercise});
  Exercise exercise = Exercise(name: "", weight: "", reps: "", sets: "");

  WorkoutService.fromJson(Map<String, dynamic> json) {
    exercise = json["exercise"];
  }
}
