enum ChallengeState { inprograss, finished }

class Challenge {
  String uid;
  String title;
  Map<String,int> ponitsRewards;
  String state = ChallengeState.inprograss.name;
  DateTime initDuration;
  String description;

  Challenge({
    required this.uid,
    required this.title,
    required this.ponitsRewards,
    required this.description,
    required this.initDuration,
  });

  factory Challenge.fromJson({required Map<String, dynamic> json}) {
    Challenge tempTask = Challenge(
      uid: json["uid"],
      title: json["title"],
      ponitsRewards: json["pointRewards"],
      description: json["description"],
      initDuration: DateTime(json["initDuration"]),
    );
    tempTask.state = json["state"];
    return tempTask;
  }

  taskFinish() {
    state = ChallengeState.finished.name;
  }
}
