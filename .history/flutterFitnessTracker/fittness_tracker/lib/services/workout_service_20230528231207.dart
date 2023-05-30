import 'package:cloud_firestore/cloud_firestore.dart';

class WorkoutService {
  FirebaseFirestore instance = FirebaseFirestore.instance;

  Future<List> getWorkout() async {
    CollectionReference<Map<String, dynamic>> workoutCollection =
        instance.collection('workout');
    QuerySnapshot querySnapshot = await workoutCollection.get();

    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();
    print(allData);
    return allData;
  }
}
