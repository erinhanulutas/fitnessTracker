import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final String exerciseName;
  final String reps;
  final String sets;
  final String weight;
  final bool isComplete;
  void Function(bool?)? onCheckboxChanged;

  ExerciseTile({
    super.key,
    required this.exerciseName,
    required this.weight,
    required this.reps,
    required this.sets,
    required this.isComplete,
    required this.onCheckboxChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: ListTile(
        title: Text(exerciseName),
        subtitle: Row(
          children: [
            //weight
            Chip(
              label: Text(
                "$weight kgs",
              ),
            ),

            // reps
            Chip(
              label: Text(
                "$reps reps",
              ),
            ),

            // sets
            Chip(
              label: Text(
                "$sets sets",
              ),
            )
          ],
        ),
        trailing: Checkbox(
          value: isComplete,
          onChanged: (value) => onCheckboxChanged!(value),
        ),
      ),
    );
  }
}
