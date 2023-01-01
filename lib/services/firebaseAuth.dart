//Sign in method
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/router/router.dart';
import 'package:tuwaiq_community/views/LoginPage/LoginPage.dart';
import 'package:tuwaiq_community/views/style.dart';

SignInMethod({required String emailAddress, required String password}) async {
  try {
    final credential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: emailAddress, password: password);

    Get.offAllNamed(RouterName.appDrawer);
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      Get.snackbar(
          backgroundColor: appColors.onMain.withOpacity(0.5),
          'خطأ في التسجيل',
          'اسم المستخدم او كلمة المرور غير صحيحة',
          snackPosition: SnackPosition.BOTTOM);
    } else if (e.code == 'wrong-password') {
      Get.snackbar(
          backgroundColor: appColors.onMain.withOpacity(0.5),
          'خطأ في التسجيل',
          'اسم المستخدم او كلمة المرور غير صحيحة',
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}

//Sign up method
SignUpMethod({
  required String emailAddress,
  required String password,
}) async {
  try {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailAddress,
      password: password,
    );
    Get.offAllNamed(RouterName.appNavigator);
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}

//Sign out method
SignOutMethod() async {
  await FirebaseAuth.instance.signOut();
  Get.offAll(() => LoginPage());
}

//Reset password method
Future ResetPassMethod({required String emailAddress}) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress);
    Get.snackbar('تم الارسال',
        'تم ارسال رسالة استعادة كلمة المرور على البريد الالكتروني');
    Get.to(LoginPage());
  } on FirebaseAuthException catch (e) {
    print(e.message);
    Get.snackbar(
        backgroundColor: appColors.onMain.withOpacity(0.5),
        'خطأ في المحاولة',
        e.message.toString(),
        snackPosition: SnackPosition.BOTTOM);
  }
}
