import 'package:flutter/material.dart';
import 'package:project/components/app_screen.dart';
import 'package:project/screen/customer/homescreen.dart';
import 'package:project/screen/general/login_screen.dart';
import 'package:project/screen/general/regsiter_screen.dart';
import 'package:project/screen/general/wellcome_screen.dart';

void main() {

  //WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(AppScreen<WellComeScreen>());

}

