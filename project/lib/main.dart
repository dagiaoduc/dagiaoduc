import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project/components/app_screen.dart';
import 'package:project/screen/customer/homescreen.dart';
import 'package:project/screen/general/login_screen.dart';
import 'package:project/screen/general/regsiter_screen.dart';
import 'package:project/screen/general/wellcome_screen.dart';

void main() async{

  //WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AppScreen<WellComeScreen>());

}

