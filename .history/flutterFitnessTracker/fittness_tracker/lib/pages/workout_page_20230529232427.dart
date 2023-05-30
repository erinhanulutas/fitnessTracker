import 'package:fittness_tracker/components/exercise_tile.dart';
import 'package:fittness_tracker/models/exercise.dart';
import 'package:fittness_tracker/services/exerciseService.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WorkoutPage extends StatefulWidget {
  final String workoutName;

  const WorkoutPage({super.key, required this.workoutName});

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  ExerciseService exerciseService = ExerciseService();

  // text controllers
  final exerciseNameController = TextEditingController();
  final weightController = TextEditingController();
  final setsController = TextEditingController();
  final repsController = TextEditingController();

  //create new exercise
  void createNewExercise() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Add new Exercise"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //exercise name
            TextField(
              decoration: const InputDecoration(hintText: "Exercise name"),
              controller: exerciseNameController,
            ),
            // weight
            TextField(
              decoration: const InputDecoration(hintText: "Weight kg"),
              controller: weightController,
            ),

            // sets
            TextField(
              decoration: const InputDecoration(hintText: "Sets"),
              controller: setsController,
            ),

            // reps
            TextField(
              decoration: const InputDecoration(hintText: "Reps"),
              controller: repsController,
            ),
          ],
        ),
        actions: [
          //save button
          MaterialButton(
            onPressed: () {
              if (repsController.text != "" && setsController.text != "") {
                print("asdasd");
                save();
              }
            },
            child: const Text("Save"),
          ),

          //cancel button
          MaterialButton(
            onPressed: cancel,
            child: const Text("Cancel"),
          )
        ],
      ),
    );
  }

  //save workout
  void save() {
    //get exercise name from controller
    String newExerciseName = exerciseNameController.text;
    String weight = weightController.text;
    String reps = repsController.text;
    String sets = setsController.text;

    Exercise ex = Exercise(
        name: newExerciseName,
        weight: weight,
        reps: reps,
        sets: sets,
        isCompleted: false);

    // PUSH TO FIREBASE
    exerciseService.addExercise(ex);

    // pop dilaog
    Navigator.pop(context);
    clear();
  }

  //cancel workout
  void cancel() {
    Navigator.pop(context);
    clear();
  }

  // clear controller
  void clear() {
    exerciseNameController.clear();
    weightController.clear();
    setsController.clear();
    repsController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blueAccent.withAlpha(150),
          title: Text(
            widget.workoutName,
            style: const TextStyle(color: Colors.black),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: createNewExercise,
          child: const Icon(Icons.fitness_center),
        ),
        body: FutureBuilder(
          future: exerciseService.getExercise(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Exercise> exs = List.generate(snapshot.data!.length,
                  (index) => Exercise.fromJson(snapshot.data));
              snapshot.data
                  ?.map((exercise) => exs.add(Exercise.fromJson(exercise)));
            }

            if (snapshot.connectionState == ConnectionState.done) {
              return Text("${exs[0]}");
            } else {
              return CircularProgressIndicator();
            }
          },
        ));
    /*
    return Consumer<WorkoutData>(
      builder: (context, value, child) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blueAccent.withAlpha(150),
          title: Text(
            widget.workoutName,
            style: const TextStyle(color: Colors.black),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: createNewExercise,
          child: const Icon(Icons.fitness_center),
        ),
        body: ListView.builder(
          itemCount: value.numberOfExercisesInWorkout(widget.workoutName),
          itemBuilder: (context, index) => ExerciseTile(
            exerciseName: value
                .getReleventWorkout(widget.workoutName)
                .exercises[index]
                .name,
            weight: value
                .getReleventWorkout(widget.workoutName)
                .exercises[index]
                .weight,
            reps: value
                .getReleventWorkout(widget.workoutName)
                .exercises[index]
                .reps,
            sets: value
                .getReleventWorkout(widget.workoutName)
                .exercises[index]
                .sets,
            isComplete: value
                .getReleventWorkout(widget.workoutName)
                .exercises[index]
                .isCompleted,
            onCheckboxChanged: (val) => onCheckboxChanged(
              widget.workoutName,
              value
                  .getReleventWorkout(widget.workoutName)
                  .exercises[index]
                  .name,
            ),
          ),
        ),
      ),
    );
     */
  }
}
