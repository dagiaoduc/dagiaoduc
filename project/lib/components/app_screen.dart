
import 'package:flutter/material.dart';
import 'package:project/components/main_state.dart';
import 'package:project/screen/customer/attendance_screen.dart';
import 'package:project/screen/customer/class_detail_screen.dart';
import 'package:project/screen/customer/class_list_screen.dart';
import 'package:project/screen/customer/homescreen.dart';
import 'package:project/screen/general/user_infor_screen.dart';

class AppScreen<T extends MainState> extends StatelessWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: globals.configApp.appName,
      title: 'Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppScreenPage<T>(),
    );
  }
}
class AppScreenPage<T extends MainState> extends StatefulWidget {
  const AppScreenPage({Key? key}) : super(key: key);

  @override
  State<AppScreenPage> createState() {
    if(T == HomeScreen) {
      return HomeScreen();
    }else if(T == ClassDetailScreen) {
      return ClassDetailScreen();
    }else if(T == AttendanceScreen) {
      return AttendanceScreen();
    }else if(T == ClassListScreen) {
      return ClassListScreen();
    }else if(T == UserInforScreen) {
      return UserInforScreen();
    }
    return HomeScreen();
  }
}
