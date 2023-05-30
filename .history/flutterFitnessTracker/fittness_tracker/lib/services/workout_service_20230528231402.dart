import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fittness_tracker/models/exercise.dart';
import 'package:flutter/material.dart';

class WorkoutService {
  FirebaseFirestore instance = FirebaseFirestore.instance;

  Future<List> getWorkout() async {
    CollectionReference<Map<String, dynamic>> exerciseCollection =
        instance.collection('exercises');
    QuerySnapshot querySnapshot = await exerciseCollection.get();

    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();

    return allData;
  }
}
