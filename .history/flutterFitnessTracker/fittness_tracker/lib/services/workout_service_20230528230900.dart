import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fittness_tracker/models/exercise.dart';

class WorkoutService {
  FirebaseFirestore instance = FirebaseFirestore.instance;

  WorkoutService({required this.exercise});
  Exercise exercise = Exercise(name: "", weight: "", reps: "", sets: "");

  WorkoutService.fromJson(Map<String, dynamic> json) {
    exercise = json["exercise"];
  }

  Future<List> getWorkout() async {
    CollectionReference<Map<String, dynamic>> exerciseCollection =
        instance.collection('exercises');
    QuerySnapshot querySnapshot = await exerciseCollection.get();

    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();

    return allData;
  }
}
