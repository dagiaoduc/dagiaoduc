
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:project/components/app_screen.dart';
import 'package:project/screen/customer/homescreen.dart';
import 'package:project/screen/general/login_screen.dart';

class AuthService{

  handleAuthState(){
    return StreamBuilder(
        builder: (BuildContext context, snapshot){
          if (snapshot.hasData){
            return  AppScreen<HomeScreen>();
          } else{
            return  AppScreen<LoginScreen>();
          }
        }
    );
  }
  signInWithGoogle() async{
    final GoogleSignInAccount? googleUser = await GoogleSignIn(scopes: <String>["email"]).signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken:  googleAuth.idToken,
    );
    //print(FirebaseAuth.instance.currentUser!.displayName!);
    return await FirebaseAuth.instance.signInWithCredential(credential);

  }

}