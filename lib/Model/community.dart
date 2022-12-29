// import 'package:tuwaiq_community/Model/trainee.dart';
// import 'package:tuwaiq_community/Model/trainer.dart';

// class Community {
//   String uid;
//   String name;
//   String imagePath;
//   bool hasImage = false;
//   String description;
//   String place;
//   String time;
//   List<Trainer> trianers;
//   List<Trianees> trainees;
//   List<Challenge> challenges;
//   List<Task> tasks;

//   Community({
//     required this.uid,
//     required this.name,
//     this.imagePath = "images/defualtCommunityImage.png",
//     required this.description,
//     required this.place,
//     required this.time,
//   });

//   Community.fromJson(Map<String, dynamic> json) {
//     uid = json['uid'];
//     name = json['name'];
//     imagePath = json['imagePath'];
//     description = json['description'];
//     place = json['place'];
//     time = json['time'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['uid'] = this.uid;
//     data['name'] = this.name;
//     data['imagePath'] = this.imagePath;
//     data['description'] = this.description;
//     data['place'] = this.place;
//     data['time'] = this.time;
//     return data;
//   }
// }
