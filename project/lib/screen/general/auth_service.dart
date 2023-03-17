import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:project/components/app_screen.dart';
import 'package:project/screen/customer/homescreen.dart';
import 'package:project/screen/general/login_screen.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AuthService{

  handleAuthState(){
    return StreamBuilder(
        stream : FirebaseAuth.instance.authStateChanges(),
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
  signInWithApple() async{
    var redirectURL = "https://SERVER_AS_PER_THE_DOCS.glitch.me/callbacks/sign_in_with_apple";
    var clientID = "AS_PER_THE_DOCS";
    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      webAuthenticationOptions: WebAuthenticationOptions(
          clientId: clientID,
          redirectUri: Uri.parse(
              redirectURL)),
      // TODO: Remove these if you have no need for them
      nonce: 'example-nonce',
      state: 'example-state',
    );

    // ignore: avoid_print
    print(credential);

    // This is the endpoint that will convert an authorization code obtained
    // via Sign in with Apple into a session in your system
    final signInWithAppleEndpoint = Uri(
      scheme: 'https',
      host: 'flutter-sign-in-with-apple-example.glitch.me',
      path: '/sign_in_with_apple',
      queryParameters: <String, String>{
        'code': credential.authorizationCode,
        if (credential.givenName != null)
          'firstName': credential.givenName!,
        if (credential.familyName != null)
          'lastName': credential.familyName!,
        'useBundleId':
        !kIsWeb && (Platform.isIOS || Platform.isMacOS)
            ? 'true'
            : 'false',
        if (credential.state != null) 'state': credential.state!,
      },
    );

    final session = await http.Client().post(
      signInWithAppleEndpoint,
    );

    // If we got this far, a session based on the Apple ID credential has been created in your system,
    // and you can now set this as the app's session
    // ignore: avoid_print
    print(session);
  }
}