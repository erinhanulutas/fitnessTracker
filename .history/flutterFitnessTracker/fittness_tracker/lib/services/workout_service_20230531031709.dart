import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fittness_tracker/models/exercise.dart';
import 'package:fittness_tracker/models/workout.dart';
import 'package:flutter/material.dart';

class WorkoutService {
  FirebaseFirestore instance = FirebaseFirestore.instance;

  Future<void> addWorkout(Workout ex) async {
    CollectionReference<Map<String, dynamic>> workoutCollection =
        instance.collection('workout');

    try {
      DocumentReference docRef = await workoutCollection.add(ex.toJson());
      ex.exerciseID = docRef.id;
      docRef.set(ex.toJson());
    } catch (e) {
      print(e);
    }
  }

  Future<List> getWorkout() async {
    CollectionReference<Map<String, dynamic>> workoutCollection =
        instance.collection('workout');
    QuerySnapshot querySnapshot = await workoutCollection.get();
    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();

    return allData;
  }
}
