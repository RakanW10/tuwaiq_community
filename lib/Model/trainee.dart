class Trainee {
  String name;
  String profileImagePath;
  bool hasProfileImage = false;
  String QRCodePath;

  String email;

  int levelPoint;
  int tuwaiqCoinAmount;

  List<String> myCommunities;
  int twuaiqRank;
  Map<String, int> myCommunitiesRanks;
  List<String> trophiesPaths;
  List<String> bannersPaths;

  Trainee({
    required this.name,
    this.profileImagePath = "images/default-profile-picture.jpeg",
    required this.email,
    required this.QRCodePath,
    required this.levelPoint,
    required this.tuwaiqCoinAmount,
    required this.myCommunitiesRanks,
    required this.twuaiqRank,
    required this.myCommunities,
    required this.trophiesPaths,
    required this.bannersPaths,
  }) {
    if (profileImagePath != "images/default-profile-picture.jpeg") {
      hasProfileImage = true;
    }
  }
  factory Trainee.fromJson({required Map<String, dynamic> json}) {
    return Trainee(
        name: json["name"],
        QRCodePath: json["QRCodePath"],
        email: json["email"],
        levelPoint: json["levelPoint"],
        tuwaiqCoinAmount: json["tuwaiqCoinAmount"],
        myCommunitiesRanks: json["myCommunitiesRanks"],
        twuaiqRank: json["twuaiqRank"],
        myCommunities: json["myCommunities"],
        trophiesPaths: json["trophiesPaths"],
        bannersPaths: json["bannersPaths"]);
  }
  toJson() {
    Map<String, dynamic> data = {};
    data["name"] = name;
    data["QRCodePath"] = QRCodePath;
    data["email"] = email;
    data["levelPoint"] = levelPoint;
    data["tuwaiqCoinAmount"] = tuwaiqCoinAmount;
    data["myCommunitiesRanks"] = myCommunities;
    data["tuwaiqRank"] = twuaiqRank;
    data["myCommunities"] = myCommunities;
    data["trophiesPaths"] = trophiesPaths;
    data["bannersPaths"] = bannersPaths;
    return data;
  }
}
