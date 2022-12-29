import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;

var names = [
  "أحمد",
  "أحنف",
  "أزهر",
  "أسامة",
  "أسد",
  "أسمر",
  "أشرف",
  "أكرم",
  "الأخضر",
  "الوليد",
  "إمام",
  "آمر",
  "أمية",
  "أمين",
  "أنصاري",
  "أنور",
  "أوس",
  "إياد",
  "إيثار",
  "أيسر",
  "أيمن",
  "إيناس",
  "إيهاب",
  "بادي",
  "باسل",
  "باشر",
  "باهر",
  "بجاد",
  "بدر",
  "بدري",
  "بدوي",
  "براء",
  "براق",
  "براك",
  "برعم",
  "برهان",
  "برهوم",
  "برئ",
  "بسام",
  "بسطام",
  "بسيم",
  "بشامة",
  "بشير",
  "بطل",
  "بكر",
  "بكري",
  "بلال",
  "بلبل",
  "بنداري",
  "بندر",
  "بهاء",
  "تامر",
  "تركي",
  "تمام",
  "تيجاني",
  "تيسير",
  "ثنيان",
  "ثواب",
  "جاسر",
  "جاسم",
  "جاهد",
  "جبير",
  "جحا",
  "جعيفر",
  "جعيل",
  "جلال",
  "جليل",
  "جمال",
  "جمعة",
  "جندل",
  "جواد",
  "جوهري",
  "حاتم",
  "حبشي",
  "حبيب",
  "حجاج",
  "حجازي",
  "حجي",
  "حداد",
  "حذيفه",
  "حسام",
  "حسان",
  "حسنين",
  "حسون",
  "حسيب",
  "حسين",
  "حفيظ",
  "حلمي",
  "حماد",
  "حمادة",
  "حمدان",
  "حمدي",
  "حمزة",
  "حمود",
  "حمودة",
  "حميدو",
  "حنبل",
  "حنظلة",
  "حنفي",
  "حيدر",
  "حيدرة",
  "خازم",
  "خالد",
  "خطاب",
  "خلدون",
  "خميس",
  "خويلد",
  "خيري",
  "داوود",
  "دريد",
  "رابح",
  "راشد",
  "ربيع",
  "رجاء",
  "رسول",
  "رشدي",
  "رضا",
  "رضوان",
  "رمضان",
  "رياض",
  "زاهد",
  "زايد",
  "زهران",
  "زياد",
  "ساري",
  "سالم",
  "سامر",
  "سامي",
  "سرحان",
  "سعد",
  "سلطان",
  "سمير",
  "سهيل",
  "شادي",
  "شكيب",
  "شهاب",
  "صابر",
  "صفوان",
  "صلاح",
  "صياح",
  "ضاحي",
  "ضرغام",
  "طارق",
  "طلال",
  "طه",
  "عادل",
  "عامر",
  "عايد",
  "عبد الإله",
  "عبد الحميد",
  "عبد الرحمن",
  "عبد الله",
  "عبد المعين",
  "عبيدة",
  "عثمان",
  "عدنان",
  "عروة",
  "عزيز",
  "علاء",
  "علي",
  "عمار",
  "غازي",
  "غسان",
  "غياث",
  "فادي",
  "فاروق",
  "فراس",
  "فهد",
  "فواز",
  "قتادة",
  "قتيبة",
  "قحطان",
  "قصي",
  "قيس",
  "كايد",
  "كمال",
  "كنعان",
  "لقمان",
  "لؤي",
  "ليث",
  "ماجد",
  "مازن",
  "مأمون",
  "محمد",
  "محمد نور",
  "مرهف",
  "مسعود",
  "مشاري",
  "مشعل",
  "مصطفى",
  "مصعب",
  "مطلق",
  "معاذ",
  "معاوية",
  "معتصم",
  "معز",
  "ممدوح",
  "مناف",
  "مهند",
  "مؤيد",
  "ناصر",
  "نايف",
  "نديم",
  "نذير",
  "نزار",
  "نعمان",
  "نواف",
  "نوفل",
  "هاني",
  "هزاع",
  "هشام",
  "هلال",
  "هواش",
  "هيثم",
  "وائل",
  "وسام",
  "وضاح",
  "وليد",
  "ياسر",
  "يامن"
];
var data = [
  {
    "uid": "e67c26780a926be3cd89166b797d2b3b84d3b7bb",
    "name": "ياسر وسام",
    "profileImagePath":
        "https://robohash.org/teneturquissimilique.png?size=35x35&set=set1",
    "email": "nromme0@cnet.com",
    "QRCodePath": "M",
    "levelPoint": 5421,
    "tuwaiqCoinAmount": 211,
    "myCommunities": {"2": "UI/UX"},
    "trophiesPaths": {
      "1": "images/DartReward 1.png",
      "2": "images/GitHubReward 1.png",
      "3": "images/Group 898.png"
    },
    "bannersPaths": {"1": "images/Banner.png"}
  },
  {
    "uid": "14d13eaedb026cf90205fc1e021d580d55ccdc07",
    "name": "ايمن هزاع",
    "profileImagePath":
        "https://robohash.org/nihilidaccusantium.png?size=35x35&set=set1",
    "email": "sansell1@skype.com",
    "QRCodePath": "F",
    "levelPoint": 5435,
    "tuwaiqCoinAmount": 345,
    "myCommunities": {"1": "Fltture", "2": "UI/UX"},
    "trophiesPaths": {
      "1": "images/DartReward 1.png",
      "2": "images/GitHubReward 1.png",
      "3": "images/Group 898.png"
    },
    "bannersPaths": {"1": "images/Banner.png"}
  },
  {
    "uid": "c3ddfde9e9d3b823d776dac37d3ae82a82a6ed8d",
    "name": "نورة عبدالرحمن",
    "profileImagePath":
        "https://robohash.org/etdoloresnon.png?size=35x35&set=set1",
    "email": "ethecham2@tripod.com",
    "QRCodePath": "M",
    "levelPoint": 4537,
    "tuwaiqCoinAmount": 3,
    "myCommunities": {"1": "Fltture", "2": "UI/UX"},
    "trophiesPaths": {
      "1": "images/DartReward 1.png",
      "2": "images/GitHubReward 1.png",
      "3": "images/Group 898.png"
    },
    "bannersPaths": {"1": "images/Banner.png"}
  },
  {
    "uid": "d1eebdf084815710e168d540075f3a0fdb40893f",
    "name": "رغد عبدالله",
    "profileImagePath":
        "https://robohash.org/cumquevelrerum.png?size=35x35&set=set1",
    "email": "test@gmail.com",
    "QRCodePath": "F",
    "levelPoint": 4559,
    "tuwaiqCoinAmount": 1250,
    "myCommunities": {"1": "Fltture", "2": "UI/UX"},
    "trophiesPaths": {
      "1": "images/DartReward 1.png",
      "2": "images/GitHubReward 1.png",
      "3": "images/Group 898.png"
    },
    "bannersPaths": {"1": "images/Banner.png"}
  },
  {
    "uid": "73f27317da89a18cebccac69cd895d59112a5091",
    "name": "احمد فهد",
    "profileImagePath":
        "https://robohash.org/repellatquamofficia.png?size=35x35&set=set1",
    "email": "dblenkinsopp4@miibeian.gov.cn",
    "QRCodePath": "F",
    "levelPoint": 4234,
    "tuwaiqCoinAmount": 5,
    "myCommunities": {"1": "Fltture"},
    "trophiesPaths": {
      "1": "images/DartReward 1.png",
      "2": "images/GitHubReward 1.png",
      "3": "images/Group 898.png"
    },
    "bannersPaths": {"1": "images/Banner.png"}
  },
  {
    "uid": "c555c3a2c9f874597f24c8e2f2ff768323ecc048",
    "name": "زين ريان",
    "profileImagePath":
        "https://robohash.org/quicommodiet.png?size=35x35&set=set1",
    "email": "tjanaszewski5@boston.com",
    "QRCodePath": "M",
    "levelPoint": 4321,
    "tuwaiqCoinAmount": 6,
    "myCommunities": {"1": "Fltture", "2": "UI/UX"},
    "trophiesPaths": {
      "1": "images/DartReward 1.png",
      "2": "images/GitHubReward 1.png",
      "3": "images/Group 898.png"
    },
    "bannersPaths": {"1": "images/Banner.png"}
  },
  {
    "uid": "c571309fa166da3e7a5d197a4ad5118592af864c",
    "name": "خالد عبدالملك",
    "profileImagePath":
        "https://robohash.org/expeditaquialabore.png?size=35x35&set=set1",
    "email": "xluciano6@miitbeian.gov.cn",
    "QRCodePath": "M",
    "levelPoint": 5212,
    "tuwaiqCoinAmount": 7,
    "myCommunities": {"1": "UI/UX"},
    "trophiesPaths": {
      "1": "images/DartReward 1.png",
      "2": "images/GitHubReward 1.png",
      "3": "images/Group 898.png"
    },
    "bannersPaths": {"1": "images/Banner.png"}
  },
  {
    "uid": "997bf1f18b7ac1e87834a8407792cc2d85373cb8",
    "name": "محمد عبدالله",
    "profileImagePath":
        "https://robohash.org/possimusdeseruntnihil.png?size=35x35&set=set1",
    "email": "ceverett7@stanford.edu",
    "QRCodePath": "M",
    "levelPoint": 2432,
    "tuwaiqCoinAmount": 8,
    "myCommunities": {"1": "Fltture", "2": "UI/UX"},
    "trophiesPaths": {
      "1": "images/DartReward 1.png",
      "2": "images/GitHubReward 1.png",
      "3": "images/Group 898.png"
    },
    "bannersPaths": {"1": "images/Banner.png"}
  },
  {
    "uid": "4050f794206b2efd25dc645367f3b5f39af94646",
    "name": "تركي خالد",
    "profileImagePath":
        "https://robohash.org/fugitlaborumreiciendis.png?size=35x35&set=set1",
    "email": "agreenhalf8@nymag.com",
    "QRCodePath": "M",
    "levelPoint": 4322,
    "tuwaiqCoinAmount": 9,
    "myCommunities": {"1": "Fltture"},
    "trophiesPaths": {
      "1": "images/DartReward 1.png",
      "2": "images/GitHubReward 1.png",
      "3": "images/Group 898.png"
    },
    "bannersPaths": {"1": "images/Banner.png"}
  },
  {
    "uid": "629d75ea7e31eb4de3de25483d856e31899274fe",
    "name": "سلطان محمد",
    "profileImagePath":
        "https://robohash.org/quamlaboriosamnatus.png?size=35x35&set=set1",
    "email": "sgrishunin9@mac.com",
    "QRCodePath": "M",
    "levelPoint": 4319,
    "tuwaiqCoinAmount": 10,
    "myCommunities": {"1": "Fltture", "2": "UI/UX"},
    "trophiesPaths": {
      "1": "images/DartReward 1.png",
      "2": "images/GitHubReward 1.png",
      "3": "images/Group 898.png"
    },
    "bannersPaths": {"1": "images/Banner.png"}
  },
  {
    "uid": "5c84b95cbd9d8edd1df0143a04978b9a76f18176",
    "name": "امجاد السلمان",
    "profileImagePath":
        "https://robohash.org/quisquameain.png?size=35x35&set=set1",
    "email": "wchristophersa@indiatimes.com",
    "QRCodePath": "M",
    "levelPoint": 4421,
    "tuwaiqCoinAmount": 11,
    "myCommunities": {"1": "Fltture", "2": "UI/UX"},
    "trophiesPaths": {
      "1": "images/DartReward 1.png",
      "2": "images/GitHubReward 1.png",
      "3": "images/Group 898.png"
    },
    "bannersPaths": {"1": "images/Banner.png"}
  },
  {
    "uid": "b19e0d8cd649c60bc994d3b2c8d393055ffbf994",
    "name": "تهاني البراق",
    "profileImagePath":
        "https://robohash.org/impeditautodit.png?size=35x35&set=set1",
    "email": "mbycraftb@yellowbook.com",
    "QRCodePath": "M",
    "levelPoint": 1982,
    "tuwaiqCoinAmount": 12,
    "myCommunities": {"1": "Fltture", "2": "UI/UX"},
    "trophiesPaths": {
      "1": "images/DartReward 1.png",
      "2": "images/GitHubReward 1.png",
      "3": "images/Group 898.png"
    },
    "bannersPaths": {"1": "images/Banner.png"}
  },
  {
    "uid": "52156c500bb98c731cc5f4c54db5b75c5e8f7a11",
    "name": "ملاك مشعل",
    "profileImagePath":
        "https://robohash.org/exercitationemtemporedicta.png?size=35x35&set=set1",
    "email": "rhailc@about.me",
    "QRCodePath": "F",
    "levelPoint": 4213,
    "tuwaiqCoinAmount": 13,
    "myCommunities": {"1": "Fltture", "2": "UI/UX"},
    "trophiesPaths": {
      "1": "images/DartReward 1.png",
      "2": "images/GitHubReward 1.png",
      "3": "images/Group 898.png"
    },
    "bannersPaths": {"1": "images/Banner.png"}
  },
  {
    "uid": "a1461417248dc577fd6ca82f24dbc5abb53a0556",
    "name": "رياض علي",
    "profileImagePath":
        "https://robohash.org/optioconsequatureius.png?size=35x35&set=set1",
    "email": "icordeuxd@phoca.cz",
    "QRCodePath": "M",
    "levelPoint": 1973,
    "tuwaiqCoinAmount": 14,
    "myCommunities": {"1": "Fltture", "2": "UI/UX"},
    "trophiesPaths": {
      "1": "images/DartReward 1.png",
      "2": "images/GitHubReward 1.png",
      "3": "images/Group 898.png"
    },
    "bannersPaths": {"1": "images/Banner.png"}
  },
  {
    "uid": "678e026a8b41abde056f673ef9ae7ba7054b59e0",
    "name": "ريان ناصر",
    "profileImagePath":
        "https://robohash.org/etremducimus.png?size=35x35&set=set1",
    "email": "majeane@cnn.com",
    "QRCodePath": "M",
    "levelPoint": 2345,
    "tuwaiqCoinAmount": 15,
    "myCommunities": {"1": "Fltture", "2": "UI/UX"},
    "trophiesPaths": {
      "1": "images/DartReward 1.png",
      "2": "images/GitHubReward 1.png",
      "3": "images/Group 898.png"
    },
    "bannersPaths": {"1": "images/Banner.png"}
  },
  {
    "uid": "ed1d43745c933324a619619d1b42868f5d3ee6f8",
    "name": "مشعل الخالدي",
    "profileImagePath":
        "https://robohash.org/nonmodiconsectetur.png?size=35x35&set=set1",
    "email": "placef@mozilla.com",
    "QRCodePath": "M",
    "levelPoint": 3642,
    "tuwaiqCoinAmount": 16,
    "myCommunities": {"1": "Fltture", "2": "UI/UX"},
    "trophiesPaths": {
      "1": "images/DartReward 1.png",
      "2": "images/GitHubReward 1.png",
      "3": "images/Group 898.png"
    },
    "bannersPaths": {"1": "images/Banner.png"}
  },
  {
    "uid": "b58992dae6504ff958976a7fdbd623511c552f2c",
    "name": "عبدالاله خالد",
    "profileImagePath": "https://robohash.org/totameaa.png?size=35x35&set=set1",
    "email": "wmowneg@mediafire.com",
    "QRCodePath": "F",
    "levelPoint": 1677,
    "tuwaiqCoinAmount": 17,
    "myCommunities": {"1": "Fltture", "2": "UI/UX"},
    "trophiesPaths": {
      "1": "images/DartReward 1.png",
      "2": "images/GitHubReward 1.png",
      "3": "images/Group 898.png"
    },
    "bannersPaths": {"1": "images/Banner.png"}
  },
  {
    "uid": "01f078711f627fd083b0a1a7087fbc8ea39f3aba",
    "name": "مالك زين",
    "profileImagePath":
        "https://robohash.org/nonassumendatotam.png?size=35x35&set=set1",
    "email": "bbenteh@nature.com",
    "QRCodePath": "M",
    "levelPoint": 1438,
    "tuwaiqCoinAmount": 18,
    "myCommunities": {"1": "Fltture", "2": "UI/UX"},
    "trophiesPaths": {
      "1": "images/DartReward 1.png",
      "2": "images/GitHubReward 1.png",
      "3": "images/Group 898.png"
    },
    "bannersPaths": {"1": "images/Banner.png"}
  },
  {
    "uid": "a8b42049293247e85243f29b1f964cbbe9a32346",
    "name": "جمال الريان",
    "profileImagePath":
        "https://robohash.org/nequeetsed.png?size=35x35&set=set1",
    "email": "jbromwichi@flickr.com",
    "QRCodePath": "M",
    "levelPoint": 3232,
    "tuwaiqCoinAmount": 19,
    "myCommunities": {"1": "Fltture", "2": "UI/UX"},
    "trophiesPaths": {
      "1": "images/DartReward 1.png",
      "2": "images/GitHubReward 1.png",
      "3": "images/Group 898.png"
    },
    "bannersPaths": {"1": "images/Banner.png"}
  },
  {
    "uid": "eabc21755a90504dec750205ac5123f2c914d016",
    "name": "ريم الخالد",
    "profileImagePath":
        "https://robohash.org/solutapariaturcumque.png?size=35x35&set=set1",
    "email": "hchownj@walmart.com",
    "QRCodePath": "M",
    "levelPoint": 4310,
    "tuwaiqCoinAmount": 20,
    "myCommunities": {"1": "Fltture", "2": "UI/UX"},
    "trophiesPaths": {
      "1": "images/DartReward 1.png",
      "2": "images/GitHubReward 1.png",
      "3": "images/Group 898.png"
    },
    "bannersPaths": {"1": "images/Banner.png"}
  },
];

// uploadUsersDummyData() async {
//   for (int i = 0; i < data.length; i++) {
//     await FirebaseFirestore.instance
//         .collection("trainee")
//         .doc(data[i]["uid"].toString())
//         .set({"leaderboardBanner": ""});
//   }
//   print("dummey data - done uploding");
// }

