import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fittness_tracker/models/exercise.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class ExerciseService {
  FirebaseFirestore instance = FirebaseFirestore.instance;

  Future<void> addExercise(Exercise ex) async {
    var uid = Uuid();
    String id = uid.v4();
    ex.id = id;
    CollectionReference<Map<String, dynamic>> exerciseCollection =
        instance.collection('exercise');

    try {
      DocumentReference docRef = await exerciseCollection.add(ex.toJson());
      ex.id = docRef.id;
      docRef.set(ex);
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

    var x = await exerciseCollection.where('id', isEqualTo: ex.id).get();
    x.docs[0].exerciseCollection.doc(ex.id).set(ex.toJson());
  }
}
