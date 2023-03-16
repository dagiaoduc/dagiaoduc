
import 'package:flutter/material.dart';
import 'package:project/components/app_screen.dart';
import 'package:project/components/main_state.dart';
import 'package:project/screen/customer/homescreen.dart';

class UserInforScreen extends MainState{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: (){
                        pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AppScreen<HomeScreen>()),
                        );
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                    Text('THÔNG TIN TÀI KHOẢN', style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xffF1F1F1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Material(
                                  shape: CircleBorder(),
                                  clipBehavior:
                                  Clip.antiAliasWithSaveLayer,
                                  child: InkWell(
                                    splashColor: Colors.black26,
                                    onTap: () {},
                                    child: Ink.image(
                                      image: NetworkImage('https://demo.ziczacvn.com/uploads/stores/160/2022/12/2022-12-19-0736-avame.png'),
                                      fit: BoxFit
                                          .cover,
                                      height: 100,
                                      width: 100,//Add this line for center crop or use 2nd wa
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.greenAccent, // background
                                    onPrimary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                    onPressed: (){},
                                    child: Text('Sửa'),

                                ),
                              ],
                            )),
                      ),
                      Expanded(
                          flex: 7,
                          child: Container(
                            padding: EdgeInsets.only(left: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(top:20)),
                                Text('Nguyễn Trung Kiên', style: TextStyle(fontSize: 23, color: Colors.black,fontWeight: FontWeight.bold)),
                                Padding(padding: EdgeInsets.only(top:20)),
                                Text('Giới Tính: Nam', style: TextStyle(fontSize: 18, color: Colors.black)),
                                Padding(padding: EdgeInsets.only(top:20)),
                                Text('Ngày sinh: 27/05/2002', style: TextStyle(fontSize: 18, color: Colors.black)),
                                Padding(padding: EdgeInsets.only(top:20)),
                                Text('Giáo Viên', style: TextStyle(fontSize: 18, color: Colors.black)),
                                Padding(padding: EdgeInsets.only(top:20)),
                                Text('Số Điện Thoại: 0987123456', style: TextStyle(fontSize: 18, color: Colors.black)),
                                Padding(padding: EdgeInsets.only(top:20)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right:20),
                                      child:ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.greenAccent, // background
                                          onPrimary: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                        onPressed: (){},
                                        child: Text('Sửa thông tin'),

                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top:20)),
                              ],
                            )
                          )
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                  color:Colors.greenAccent,
                  height: 60,
                  child: Center(
                      child: Text(
                          'Lớp học phụ trách',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Container(
                  height: 100,
                  child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 5)),
                          Container(
                            padding: EdgeInsets.all(10),
                            
                            decoration: BoxDecoration(
                              color: Color(0xffF1F1F1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 50,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                    child: Text(
                                        'Lớp hoa hồng',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    )
                                ),
                                Expanded(
                                  flex: 6,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Expanded(
                                          flex: 3,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.red, // background
                                              onPrimary: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                            ),
                                            onPressed: (){},
                                            child: Text('Sửa ',textAlign: TextAlign.center,),

                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.only(left: 3)),
                                        Expanded(
                                          flex: 3,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.orangeAccent, // background
                                              onPrimary: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                            ),
                                            onPressed: (){},
                                            child: Text('Điểm danh' ,textAlign: TextAlign.center,),

                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.only(left: 3)),
                                        Expanded(
                                          flex: 3,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.greenAccent , // background
                                              onPrimary: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                            ),
                                            onPressed: (){},
                                            child: Text('Chi tiết',textAlign: TextAlign.center,),

                                          ),
                                        ),
                                      ],
                                    ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Container(
                  color:Colors.greenAccent,
                  height: 60,
                  child: Center(
                    child: Text(
                      'Các con đang theo dõi',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Container(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 5)),
                          Container(
                            padding: EdgeInsets.all(10),

                            decoration: BoxDecoration(
                              color: Color(0xffF1F1F1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 50,
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 4,
                                    child: Text(
                                      'Cao Thái Sơn',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    )
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        flex: 4,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.red, // background
                                            onPrimary: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                          ),
                                          onPressed: (){},
                                          child: Text('Sửa ',textAlign: TextAlign.center,),

                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 7)),

                                      Expanded(
                                        flex: 4,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.greenAccent , // background
                                            onPrimary: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                          ),
                                          onPressed: (){},
                                          child: Text('Chi tiết',textAlign: TextAlign.center,),

                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 40)),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: getBottomTab(context, 4),
    );
  }
}