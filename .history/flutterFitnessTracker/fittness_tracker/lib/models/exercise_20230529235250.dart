class Exercise {
  String? id;
  String name = "";
  int weight = -1;
  int reps = -1;
  int sets = -1;
  bool isCompleted = false;

  Exercise({
    required this.id,
    required this.name,
    required this.weight,
    required this.reps,
    required this.sets,
    this.isCompleted = false,
  });

  Exercise.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json['name'];
    weight = json['weight'];
    reps = json['reps'];
    sets = json['sets'];
    isCompleted = json['isCompleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['weight'] = weight;
    data['reps'] = reps;
    data['sets'] = sets;
    data['isCompleted'] = isCompleted;
    return data;
  }
}
