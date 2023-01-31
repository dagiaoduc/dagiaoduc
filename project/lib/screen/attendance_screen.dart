
import 'package:flutter/material.dart';
import 'package:project/components/main_state.dart';

class AttendanceScreen extends MainState{
  DateTime date = DateTime(2022,12,19);
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(' Điểm Danh ', style: TextStyle(color: Colors.black)),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color:Colors.black),
            onPressed:(){}
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.lightGreen,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 35,
                        decoration:BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:Text('Sĩ số: 15 Học Sinh',)
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 10 )),
                      Container(
                          padding: EdgeInsets.all(5),
                          alignment: Alignment.center,
                          height: 35,
                          decoration:BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child:Text('Sĩ số: 15 Học Sinh',)
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                          alignment: Alignment.center,
                          height: 35,
                          decoration:BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child:Row(
                            children: [
                              Text('${date.day}/${date.month}/${date.year}',),
                              IconButton(
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
                                  icon: Icon(Icons.edit)),
                            ],
                          ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 10 )),
                      Container(
                          alignment: Alignment.center,
                          height: 35,
                          decoration:BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child:Text('Sĩ số:',)
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: getBottomTab(context, 1),
    );
  }
}