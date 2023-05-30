import 'package:fittness_tracker/models/exercise.dart';
import 'package:fittness_tracker/models/workout.dart';
import 'package:flutter/material.dart';

class WorkoutData extends ChangeNotifier {
  //default workout
  List<Workout> workOutList = [
    Workout(name: "Upper body ", exercises: [
      Exercise(name: "Bicep Curls", weight: "10", reps: "10", sets: "3"),
    ]),
    Workout(name: "Lower body ", exercises: [
      Exercise(name: "Leg Extension", weight: "45", reps: "10", sets: "3"),
    ]),
  ];

  // get the list of workouts
  List<Workout> getWorkOutList() {
    return workOutList;
  }

  // get the length of a given worktout
  int numberOfExercisesInWorkout(String workoutName) {
    Workout releventWorkout = getReleventWorkout(workoutName);

    return releventWorkout.exercises.length;
  }

  // add workout
  void addWorkOut(String name) {
    //add new workout to the list
    workOutList.add(Workout(name: name, exercises: []));
    notifyListeners();
  }

// add an exercise to a workout
  void addExercise(String workOutname, String exerciseName, String weight,
      String reps, String sets) {
    // find the relevent workout
    Workout releventWorkout = getReleventWorkout(workOutname);
    releventWorkout.exercises.add(
      Exercise(name: exerciseName, weight: weight, reps: reps, sets: sets),
    );
    notifyListeners();
  }

  // check off a exercise
  void checkOffExercise(String workoutName, String exerciseName) {
    //find the relevent exercise in the  workout
    Exercise releventExercise = getReleventExercise(workoutName, exerciseName);

    //check of the boolean to show user completed the exercise
    releventExercise.isCompleted = !releventExercise.isCompleted;
    notifyListeners();
  }

  // return relevent workout object , given workout name
  Workout getReleventWorkout(String workoutName) {
    Workout releventWorkout =
        workOutList.firstWhere((workout) => workout.name == workoutName);
    return releventWorkout;
  }

  // return relevent exercise object ,given workout name + exercise name

  Exercise getReleventExercise(String workoutName, String exerciseName) {
    // find the relevent workout first
    Workout releventWorkout = getReleventWorkout(workoutName);
    // then find the relevent exercise in the that workout
    Exercise releventExercise = releventWorkout.exercises
        .firstWhere((exercise) => exercise.name == exerciseName);
    return releventExercise;
  }
}
