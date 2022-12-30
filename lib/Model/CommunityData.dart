import 'package:cloud_firestore/cloud_firestore.dart';

void uploadData(List data, String collectionName) {
  for (var i in data)
    FirebaseFirestore.instance.collection(collectionName).doc().set(i);
}

List myCommunity = [
  {
    "id": "1",
    "nameCommunity":
        "معسكر تطوير تطبيقات الهواتف الذكية والويب باستخدام Flutter",
    "image": "images/image 1.png",
    "description":
        "معسكر تدريبي مكثف لتطوير تطبيقات الجوال والويب باستخدام إطار عمل Flutter، والذي يعتبر الإطار الأحدث والأسهل لبناء تطبيقات تعمل على عدة أنظمة.",
    "class": "G-07",
    "time": "15:00-10:00"
  },
  {
    "id": "2",
    "nameCommunity": "معسكر تصميم الواجهات وتجربة المستخدم UI/UX",
    "image": "images/image 2.png",
    "description":
        "يستهدف المعسكر المهتمين في مجال تصميم واجهات وتجربة المستخدم، لتزويدهم بالمعرفة الأساسية والخطوات المتّبعة في بناء واجهة وتجربة مستخدم متكاملة؛ من خلال مجموعة من المراحل. .",
    "class": "G-09",
    "time": "15:00-10:00"
  }
];

List tuCommunity = [
  {
    "id": "1",
    "nameCommunity":
        "معسكر تطوير تطبيقات الهواتف الذكية والويب باستخدام Flutter",
    "image": "images/image 1.png",
    "description":
        "معسكر تدريبي مكثف لتطوير تطبيقات الجوال والويب باستخدام إطار عمل Flutter، والذي يعتبر الإطار الأحدث والأسهل لبناء تطبيقات تعمل على عدة أنظمة.",
    "class": "G-07",
    "time": "15:00-10:00"
  },
  {
    "id": "2",
    "nameCommunity": "معسكر تصميم الواجهات وتجربة المستخدم UI/UX",
    "image": "images/image 2.png",
    "description":
        "يستهدف المعسكر المهتمين في مجال تصميم واجهات وتجربة المستخدم، لتزويدهم بالمعرفة الأساسية والخطوات المتّبعة في بناء واجهة وتجربة مستخدم متكاملة؛ من خلال مجموعة من المراحل. .",
    "class": "G-09",
    "time": "15:00-10:00"
  },
  {
    "id": "3",
    "nameCommunity": "معسكر تطوير تطبيقات Android",
    "image": "images/image 3.png",
    "description":
        "ستتعلم من خلال هذا المعسكر عن أساسيات لغة Kotlin المعتمدة من Google في تطوير تطبيقات Android؛ لإنشاء تطبيقات احترافية ومتقدمة.",
    "class": "G-05",
    "time": "15:00-10:00"
  },
  {
    "id": "4",
    "nameCommunity": " تطوير تطبيقات iOS باستخدام SwiftUI ",
    "image": "images/image 4.png",
    "description":
        "معسكر برمجي يهدف إلى تمكين المتدربين من تطوير التطبيقات على مختلف منصات Apple، باستخدام لغة Swift وإطار عمل SwiftUI.",
    "class": "G-06",
    "time": "15:00-10:00"
  },
  {
    "id": "5",
    "nameCommunity": "دورة التصميم ثلاثي الأبعاد",
    "image": "images/image 8.png",
    "description":
        "معسكر برمجي يهدف إلى تمكين المتدربين من تطوير التطبيقات على مختلف منصات Apple، باستخدام لغة Swift وإطار عمل SwiftUI.",
    "class": "G-02",
    "time": "15:00-10:00"
  },
  {
    "id": "6",
    "nameCommunity":
        "دورة البرمجة بلغة JAVA باستخدام إطار عمل Spring Boot (للمتقدمين)",
    "image": "images/image 5.png",
    "description":
        "معسكر برمجي يهدف إلى تمكين المتدربين من تطوير التطبيقات على مختلف منصات Apple، باستخدام لغة Swift وإطار عمل SwiftUI.",
    "class": "G-08",
    "time": "15:00-10:00"
  },
];

List<Map<String, dynamic>> trainers = [
  {
    "name": " م. فهد العازمي",
    "work": " Swift UIKit & SwiftUi, Dart & Flutter",
    "image": "images/image 10.png"
  },
  {
    "name": " م. هادي البن سعد",
    "work": " Any thing ;)",
    "image": "images/hadiImage.png"
  },
  {
    "name": " م. وجدان نايف",
    "work": "Data Analysis ",
    "image": "images/image 12.png"
  }
];

List? Mychallenges = [
  {
    "image": "images/Timer-2.png",
    "challenges": "رفع بيانات على Database",
    "points": "200 نقطة",
    "coin": "20",
    "description":
        "ارفع بيانات المستخدم (اسم، عمر، و رقم الجوال) على Database بعد التحقق من المستخدم بستعمال رقم الجول. "
  },
  {
    "image": "images/Group-4.png",
    "challenges": "عملية تحقق",
    "points": "200 نقطة",
    "coin": "20",
    "description":
        "ارفع بيانات المستخدم (اسم، عمر، و رقم الجوال) على Database بعد التحقق من المستخدم بستعمال رقم الجول. "
  },
  {
    "image": "images/wrong-icon 1.png",
    "challenges": "صفحة تسجيل دخول",
    "points": "200 نقطة",
    "coin": "20",
    "description":
        "ارفع بيانات المستخدم (اسم، عمر، و رقم الجوال) على Database بعد التحقق من المستخدم بستعمال رقم الجول. "
  },
];

List MyTasks = [
  {
    "image": "images/Timer-2.png",
    "challenges": "الربط مع قاعدة البينات",
    "points": "200 نقطة",
    "description":
        "أنشاء مشروع Flutter، واربطه بمشروع Firebase جديد، بعد ذلك اختبر الاتصال برفع dummy data."
  },
  {
    "image": "images/Group-4.png",
    "challenges": "تطبيق مفهوم MVC",
    "points": "200 نقطة",
    "description":
        "أنشاء مشروع Flutter، واربطه بمشروع Firebase جديد، بعد ذلك اختبر الاتصال برفع dummy data."
  },
  {
    "image": "images/wrong-icon 1.png",
    "challenges": "محاكات تصميم Figma",
    "points": "200 نقطة",
    "description":
        "أنشاء مشروع Flutter، واربطه بمشروع Firebase جديد، بعد ذلك اختبر الاتصال برفع dummy data."
  },
  {
    "image": "images/Group-4.png",
    "challenges": "أساسيات Flutter",
    "points": "200 نقطة",
    "description":
        "أنشاء مشروع Flutter، واربطه بمشروع Firebase جديد، بعد ذلك اختبر الاتصال برفع dummy data."
  },
  {
    "image": "images/Group-4.png",
    "challenges": "اول برنامج Flutter",
    "points": "200 نقطة",
    "description":
        "أنشاء مشروع Flutter، واربطه بمشروع Firebase جديد، بعد ذلك اختبر الاتصال برفع dummy data."
  },
];
