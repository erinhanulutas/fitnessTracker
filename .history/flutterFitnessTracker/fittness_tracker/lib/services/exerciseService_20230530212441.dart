import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fittness_tracker/models/exercise.dart';

class ExerciseService {
  FirebaseFirestore instance = FirebaseFirestore.instance;

  Future<void> addExercise(Exercise ex) async {
    CollectionReference<Map<String, dynamic>> exerciseCollection =
        instance.collection('exercise');

    try {
      DocumentReference docRef = await exerciseCollection.add(ex.toJson());
      ex.id = docRef.id;
      docRef.set(ex.toJson());
    } catch (e) {
      print(e);
    }
  }

  Future<List> getExercise() async {
    CollectionReference<Map<String, dynamic>> exerciseCollection =
        instance.collection('exercise');
    QuerySnapshot querySnapshot = await exerciseCollection.get();

    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();

    return allData;
  }

  void update(Exercise ex) async {
    CollectionReference<Map<String, dynamic>> exerciseCollection =
        instance.collection('exercise');

    await exerciseCollection.doc(ex.id).set(ex.toJson());
  }
}
