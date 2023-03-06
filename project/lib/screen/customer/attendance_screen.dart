
import 'package:flutter/material.dart';
import 'package:project/components/main_state.dart';
import 'package:project/models/utils/option_model.dart';

class AttendanceScreen extends MainState{

  DateTime date = DateTime(2022,12,19);
  String? RoleType = '0';
  List<String> _Role = ['Giáo Viên', 'Phụ Huynh']; // Option 1
  String _selectedRole = 'Giáo Viên';
  List<String> _Class = ['Lớp 1', 'Lớp 2']; // Option 1
  String _selectedClass = 'Lớp 1';
  /*List<OptionModel> Role = [
    OptionModel(value: "1", title: "Phụ Huynh"),
    OptionModel(value: "0", title: "Giáo Viên")
  ];*/
  // Option 2
  int _value = 1;
  @override
  Widget build (BuildContext context){
    final x = MediaQuery.of(context).size.width;
    final y = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SafeArea(
              child: Container(
              height: 40,
              child: Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back_ios, color:Colors.black),
                      onPressed:(){}
                  ),
                  Text(' Điểm Danh ', style: TextStyle(color: Colors.black)),
                ],
              ),
            ),),
            Container(
              padding: EdgeInsets.all(10),
              color:  Color.fromRGBO(56, 252, 111, 0.91),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: x*0.4,
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        height: 35,
                        decoration:BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                child: Text('${date.day}/${date.month}/${date.year}',)
                            ),
                            Container(
                              alignment: Alignment.topCenter,
                              child: IconButton(
                                  alignment: Alignment.topCenter,
                                  onPressed: () async{
                                    DateTime? newDate = await showDatePicker(
                                      context: context,
                                      initialDate: date,
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime(3000),
                                    );
                                    if (newDate == null) return;
                                    setState(() => date = newDate);
                                  },
                                  icon: Icon(Icons.arrow_drop_down,)),
                            ),
                          ],
                        ),
                      ),

                      Padding(padding: EdgeInsets.only(bottom: 10 )),
                      Container(
                          width: x*0.4,
                          padding: EdgeInsets.all(5),
                          alignment: Alignment.center,
                          height: 35,
                          decoration:BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child:Text('Sĩ số: 15 Học Sinh',)
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: x*0.4,
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        height: 35,
                        decoration:BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child:DropdownButton(
                          //isExpanded: true,
                          value: _selectedClass,
                          underline: Container(
                            height: 2,
                          ),
                          onChanged: (newValue) {
                            setState(() {
                              _selectedRole= newValue!;
                            });
                          },
                          items: _Class.map((classroom) {
                            return DropdownMenuItem(
                              child: new Text(classroom),
                              value: classroom,
                            );
                          }).toList(),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 10 )),
                      Container(
                        width: x*0.4,
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        height: 35,
                        decoration:BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: DropdownButton(
                          underline: Container(
                            height: 2,
                          ),
                          value: _selectedRole,
                          onChanged: (newValue) {
                            setState(() {
                              _selectedRole= newValue!;
                            });
                          },
                          items: _Role.map((role) {
                            return DropdownMenuItem(
                              child: new Text(role),
                              value: role,
                            );
                          }).toList(),
                        ),


                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            Container(
              color:  Color.fromRGBO(56, 252, 111, 0.91),
              height:50,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width:x*0.1,alignment: Alignment.center ,child: Text('STT',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,)),
                  Container(width:x*0.3,alignment: Alignment.center ,child: Text('Họ và Tên',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,)),
                  Container(width:x*0.15,alignment: Alignment.center ,child: Text('Có mặt',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,)),
                  Container(width:x*0.15,alignment: Alignment.center ,child: Text('Vắng',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,)),
                  Container(width:x*0.3,alignment: Alignment.center ,child: Text('Note',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,)),
                ],
              ),
            ),
            Column(
              children: [
                for (int i = 1; i < 10; i++)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(width:x*0.1,alignment: Alignment.center,child: Text('1',style: TextStyle(color: Colors.black),textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,)),
                    Container(width:x*0.3,alignment: Alignment.center ,child: Text('Nguyễn Văn Lươn',style: TextStyle(color: Colors.black),textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,maxLines: 3,)),
                    Container(
                        width:x*0.15,
                        alignment: Alignment.center ,
                        child: Radio(
                          value: 1,
                          groupValue: _value,
                          onChanged: (value){
                            setState(() {
                              _value = value!;
                            });
                          },
                        ),
                    ),
                    Container(
                      width:x*0.15,
                      alignment: Alignment.center ,
                      child: Radio(
                        value: 2,
                        groupValue: _value,
                        onChanged: (value){
                          setState(() {
                            _value = value!;
                          });
                        },
                      ),
                    ),
                    Container(width:x*0.3,alignment: Alignment.center ,child: Text('Siêu dài xem có tràn không nào dài nữa dài mãi siêu dài tràn cả text',style: TextStyle(color: Colors.black),textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,maxLines: 3,)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 100,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: x/2,
                  height: 50,
                  color: Colors.blue,
                  child:Text(
                    'Đi học: 12',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: x/2,
                  height: 50,
                  color: Colors.red,
                  child:Text(
                    'Vắng mặt: 1',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // background
                onPrimary: Colors.white, // foreground
                minimumSize: Size(x, 50),
              ),
                onPressed: (){},
                child: Text('Hoàn thành điểm danh', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: getBottomTab(context, 2),
    );
  }
}
