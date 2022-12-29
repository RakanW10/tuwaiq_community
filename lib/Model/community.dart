import 'package:tuwaiq_community/Model/challenge.dart';
import 'package:tuwaiq_community/Model/task.dart';
import 'package:tuwaiq_community/Model/trainee.dart';
import 'package:tuwaiq_community/Model/trainer.dart';

class Community {
  String uid;
  String name;
  String imagePath;
  bool hasImage = false;
  String description;
  String place;
  String time;
  List<Trainer> trianers;
  List<Trainee> trainees;
  List<Challenge>? challenges;
  List<Task>? tasks;

  Community({
    required this.uid,
    required this.name,
    this.imagePath = "images/defualtCommunityImage.png",
    required this.description,
    required this.place,
    required this.time,
    this.challenges,
    this.tasks,
    required this.trainees,
    required this.trianers,
  });

  factory Community.fromJson(Map<String, dynamic> json) {
    List<Trainee> traineesList = [];
    for (Map<String, dynamic> i in json["trainees"]) {
      traineesList.add(Trainee.fromJson(json: i));
    }
    List<Trainer> trainersList = [];
    for (Map<String, dynamic> i in json["trainers"]) {
      traineesList.add(Trainee.fromJson(json: i));
    }
    return Community(
      uid: json['uid'],
      name: json['name'],
      imagePath: json['imagePath'],
      description: json['description'],
      place: json['place'],
      time: json['time'],
      trainees: traineesList,
      trianers: trainersList,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['imagePath'] = this.imagePath;
    data['description'] = this.description;
    data['place'] = this.place;
    data['time'] = this.time;
    return data;
  }
}
