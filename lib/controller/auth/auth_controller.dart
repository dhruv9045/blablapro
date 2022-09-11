 import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController{
  final googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;

  Future googleLogIn() async {
    final googleUser = await googleSignIn.signIn();
    if(googleUser ==null)return;
    _user= googleUser;
    final googleAuth  = await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential); 

  }
}
