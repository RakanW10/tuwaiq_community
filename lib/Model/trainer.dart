class Trainer {
  String uid;
  String name;
  String specialization;
  String profileImagePath;
  bool hasPrfileImage = false;

  Trainer({
    required this.uid,
    required this.name,
    required this.specialization,
    this.profileImagePath = "",
  }) {
    if (profileImagePath != "") hasPrfileImage = true;
  }

  factory Trainer.fromJson(Map<String, dynamic> json) {
    return Trainer(
      uid: json['uid'],
      name: json['name'],
      specialization: json['specialization'],
      profileImagePath: json['profileImagePath'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = uid;
    data['name'] = name;
    data['specialization'] = specialization;
    data['profileImagePath'] = profileImagePath;
    return data;
  }
}
