class Exercise {
  String name = "";
  int weight = -1;
  int reps = -1;
  int sets = -1;
  bool isCompleted = false;

  Exercise({
    required this.name,
    required this.weight,
    required this.reps,
    required this.sets,
    this.isCompleted = false,
  });

  Exercise.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    weight = json['weight'];
    reps = json['reps'];
    sets = json['sets'];
    isCompleted = json['isCompleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['weight'] = this.weight;
    data['reps'] = this.reps;
    data['sets'] = this.sets;
    data['isCompleted'] = this.isCompleted;
    return data;
  }
}
