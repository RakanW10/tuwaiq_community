enum TaskState { inprograss, finishedCorrect, finishedWrong, inGradeing }

class Task {
  String uid;
  String title;
  int ponitsReward;
  String state = TaskState.inprograss.name;
  DateTime initDuration;
  String description;

  Task({
    required this.uid,
    required this.title,
    required this.ponitsReward,
    required this.description,
    required this.initDuration,
  });

  factory Task.fromJson({required Map<String, dynamic> json}) {
    Task tempTask = Task(
      uid: json["uid"],
      title: json["title"],
      ponitsReward: json["pointReward"],
      description: json["description"],
      initDuration: DateTime(json["initDuration"]),
    );
    tempTask.state = json["state"];
    return tempTask;
  }

  void taskFinishCorrect() {
    state = TaskState.finishedCorrect.name;
  }

  void taskFinishWrong() {
    state = TaskState.finishedWrong.name;
  }
}
