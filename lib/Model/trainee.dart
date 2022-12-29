class Trainee {
  String uid;
  String name;
  String profileImagePath;
  bool hasProfileImage = false;
  String QRCodePath;
  String email;
  int levelPoint;
  int tuwaiqCoinAmount;
  Map<String, dynamic> myCommunities;
  Map<String, dynamic> trophiesPaths;
  Map<String, dynamic> bannersPaths;
  String leaderboardBanner;

  Trainee({
    required this.uid,
    required this.name,
    this.profileImagePath = "images/default-profile-picture.jpeg",
    required this.email,
    required this.QRCodePath,
    required this.levelPoint,
    required this.tuwaiqCoinAmount,
    required this.myCommunities,
    required this.trophiesPaths,
    required this.bannersPaths,
    required this.leaderboardBanner,
  }) {
    if (profileImagePath != "images/default-profile-picture.jpeg") {
      hasProfileImage = true;
    }
  }
  factory Trainee.fromJson({required Map<String, dynamic> json}) {
    String imagePath = json["profileImagePath"];

    Trainee temp = Trainee(
      uid: json["uid"],
      name: json["name"],
      profileImagePath: imagePath,
      QRCodePath: json["QRCodePath"],
      email: json["email"],
      levelPoint: json["levelPoint"],
      tuwaiqCoinAmount: json["tuwaiqCoinAmount"],
      myCommunities: json["myCommunities"],
      trophiesPaths: json["trophiesPaths"],
      bannersPaths: json["bannersPaths"],
      leaderboardBanner: json["leaderboardBanner"],
    );
    if (!temp.profileImagePath.isEmpty) {
      temp.hasProfileImage = true;
    }
    return temp;
  }

  toJson() {
    Map<String, dynamic> data = {};
    data["uid"] = uid;
    data["name"] = name;
    data["QRCodePath"] = QRCodePath;
    data["email"] = email;
    data["levelPoint"] = levelPoint;
    data["tuwaiqCoinAmount"] = tuwaiqCoinAmount;
    data["myCommunitiesRanks"] = myCommunities;
    data["myCommunities"] = myCommunities;
    data["trophiesPaths"] = trophiesPaths;
    data["bannersPaths"] = bannersPaths;
    data["leaderboardBanner"] = leaderboardBanner;
    return data;
  }

  @override
  String toString() {
    return "$name";
  }
}
