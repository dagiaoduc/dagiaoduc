
import 'package:flutter/material.dart';
import 'package:project/components/app_screen.dart';
import 'package:project/screen/attendance_screen.dart';
import 'package:project/screen/class_list_screen.dart';
import 'package:project/screen/homescreen.dart';
import 'package:project/screen/class_detail_screen.dart';
import 'package:project/screen/user_infor_screen.dart';



void pop(BuildContext context) {
  // Navigator.pop(context);
}
abstract class MainState extends State<AppScreenPage>{
  static late MainState currentScreen;
  BottomNavigationBar getBottomTab(BuildContext context, int index) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: index,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(
              Icons.home,
              color: (index == 0) ? Colors.deepOrangeAccent : Colors.black45,
            ),
            onPressed: () {
              if (index == 0) return;
              pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AppScreen<HomeScreen>()),
              );
            },
          ),
          label: 'Trang Chủ',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(
              Icons.groups_outlined ,
              color: (index == 1) ? Colors.deepOrangeAccent : Colors.black45,
            ),
            onPressed: () {
              if (index == 1) return;
              pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AppScreen<ClassListScreen>()),
              );
            },
          ),
          label: ' Lớp Học',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(
              Icons.note_alt_sharp,
              color: (index == 2) ? Colors.deepOrangeAccent : Colors.black45,
            ),
            onPressed: () {
              if (index == 2) return;
              pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AppScreen<AttendanceScreen>()),
              );
            },
          ),
          label: 'Điểm Danh',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(
              Icons.campaign_rounded,
              color: (index == 3) ? Colors.deepOrangeAccent: Colors.black45,
            ),
            onPressed: () {
              if (index == 3) return;
              pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AppScreen<ClassDetailScreen>()),
              );
            },
          ),
          label: 'Thông báo',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(
              Icons.person_outline,
              color: (index == 4) ? Colors.deepOrangeAccent: Colors.black45,
            ),
            onPressed: () {
              if (index == 4) return;
              pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AppScreen<UserInforScreen>()),
              );
            },
          ),
          label: 'Tài khoản',
        ),
      ],
      //selectedLabelStyle: TextStyle(color: globals.configApp.getAppColor()),
      //selectedItemColor: globals.configApp.getAppColor(),
      selectedLabelStyle: TextStyle(color: Colors.blue),
      selectedItemColor: Colors.redAccent,
    );
  }
}
