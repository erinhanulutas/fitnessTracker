import 'package:fittness_tracker/data/workout_data.dart';
import 'package:fittness_tracker/models/exercise.dart';
import 'package:fittness_tracker/pages/workout_page.dart';
import 'package:fittness_tracker/services/exerciseService.dart';
import 'package:fittness_tracker/services/workout_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //text controller
  final newWorkOutNameController = TextEditingController();
  //Create a new workout
  void createNewWorkOut() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Create new workout"),
        content: TextField(
          controller: newWorkOutNameController,
        ),
        actions: [
          //save button
          MaterialButton(
            onPressed: save,
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

  // go to new workotupage
  void goToWorkoutPage(String workoutName) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WorkoutPage(
            workoutName: workoutName,
          ),
        ));
  }

  //save workout
  void save() {
    //get workout name from controller
    String newWorkOutName = newWorkOutNameController.text;

    // add workout to workoutdata list
    Provider.of<WorkoutData>(context, listen: false).addWorkOut(newWorkOutName);

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
    newWorkOutNameController.clear();
  }

  final ExerciseService es = new ExerciseService();
  final WorkoutService ws = new WorkoutService();
  Exercise ex =
      Exercise(name: "name", weight: "weight", reps: "reps", sets: "sets");

  @override
  Widget build(BuildContext context) {
    ws.getWorkout();

    return FutureBuilder(
      future: es.getExercise(),
      builder: (context, snapshot) {
        print(snapshot.data);
        List<dynamic>? x = snapshot.data;

        if (snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.blueAccent.withAlpha(150),
              title: const Text(
                'Fitness Program Tracker',
                style: TextStyle(color: Colors.black),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: createNewWorkOut,
              child: const Icon(Icons.add),
            ),
            body: Center(
              child: ListView.builder(
                itemCount: x!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(x[index]["name"]),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () => goToWorkoutPage(x[index]["name"]),
                    ),
                  );
                },
              ),
            ),
          );
        } else {
          return Text("asd");
        }
      },
    );
    /*
    return Consumer<WorkoutData>(
      builder: (context, value, child) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blueAccent.withAlpha(150),
          title: const Text(
            'Fitness Program Tracker',
            style: TextStyle(color: Colors.black),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: createNewWorkOut,
          child: const Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: value.getWorkOutList().length,
          itemBuilder: (context, index) => ListTile(
            title: Text(value.getWorkOutList()[index].name),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: () =>
                  goToWorkoutPage(value.getWorkOutList()[index].name),
            ),
          ),
        ),
      ),
    );
     */
  }
}
