import 'package:flutter/material.dart';
import 'package:project/components/main_state.dart';
import 'package:project/models/utils/option_model.dart';

class ClassDetailScreen extends MainState {
  String dropdownValue = "1";
  List<OptionModel>stsList= [
    OptionModel(value: "1", title: "Thêm lớp mới"),
    OptionModel(value: "2", title: "Sửa tên lớp"),
    OptionModel(value: "3", title: "Tham gia lớp"),
    OptionModel(value: "4", title: "Xóa"),
  ];

  @override
  Widget build(BuildContext context) {
    final x = MediaQuery.of(context).size.width;
    final y = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: x,
            height:y,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            padding: EdgeInsets.only(top: 20),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_outlined),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          alignment: Alignment.centerLeft,
                          child: Text("DANH SÁCH HỌC SINH",
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              icon: Icon(Icons.keyboard_control, color: Colors.blueAccent ,size: 20),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                              items: stsList
                                  .map<DropdownMenuItem<String>>(
                                    (item) {
                                  return DropdownMenuItem<String>(
                                    value: item.value,
                                    child: TextButton(
                                       child:Text('${item.title}'),
                                      onPressed: (){},
                                    ),
                                  );
                                },
                              ).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color:  Colors.white70,
                    child: TextField(
                      //controller: myController,
                      autofocus: false,
                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                          onPressed: () {
                            // updateSearchQuery(myController.text);
                          },
                          icon: Icon(Icons.search),
                        ),
                        hintText: "Tìm kiếm học sinh...",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: const EdgeInsets.all(20.0),
                      ),
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                      //onSubmitted: (query) => updateSearchQuery(query),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      /*globals.currentShop = null;
                      globals.currentShipper = null;
                      WalletHistory.reset();

                      pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AppScreen<EditStore>()),
                      );*/
                    },
                    child: Container(
                      color: Color(0xffFFFFFF),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child:  Text(
                            'Giáo Viên Phụ Trách:',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          ),
                          IconButton(
                            onPressed: () {
                             /* globals.currentShop = null;
                              globals.currentShipper = null;
                              WalletHistory.reset();

                              pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AppScreen<EditStore>()),
                              );*/
                            },
                            icon: Icon(Icons.add_circle_outlined,
                                color: Colors.greenAccent,)
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    decoration:BoxDecoration(
                      color: Colors.white60,
                      border: Border.all(
                        color: Colors.lightGreenAccent,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.lightGreenAccent,
                          offset: const Offset(
                            0.0,
                            2.0,
                          ),
                          blurRadius: 1.0,
                          spreadRadius: 1.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //
                      ]
                    ),
                    height: y*0.2,
                    width: x,
                    margin: EdgeInsets.all(10),
                    child: Container(
                      child: ListView.builder(
                        padding: const EdgeInsets.all(10),
                        itemCount: 3,
                        itemBuilder: (context, index){
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(bottom: 5),
                                    child:  FadeInImage(
                                      image: NetworkImage('https://demo.ziczacvn.com/uploads/stores/160/2022/12/2022-12-17-1049-rectangle-98.png'),
                                      placeholder: NetworkImage('https://demo.ziczacvn.com/uploads/stores/160/2022/12/2022-12-17-1049-rectangle-98.png'),
                                      fit: BoxFit.fill,
                                      alignment: Alignment.center,
                                      width: 35,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  ),
                                  Container(
                                    width: x*0.2,
                                    child: Text('Trần Vương Hoàng Nam',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold
                                      ), ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 35,
                                          decoration: BoxDecoration(
                                              color: Colors.redAccent,
                                              borderRadius:
                                              BorderRadius.circular(10)),
                                          child: TextButton(
                                            onPressed: () {
                                              //EditShipperDetail(context, item);
                                            },
                                            child: Text(
                                              'Xóa',
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(0, 0, 3, 0),
                                        ),
                                        Container(
                                          height: 30,
                                          width: 65,
                                          decoration: BoxDecoration(
                                              color: Colors.blueAccent,
                                              borderRadius:
                                              BorderRadius.circular(10)),
                                          child: TextButton(
                                            onPressed: () {
                                              //EditShipperDetail(context, item);
                                            },
                                            child: Text(
                                              'Phân quyền',
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(0, 0, 3, 0),
                                        ),
                                        Container(
                                          height: 30,
                                          width: 55,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                              BorderRadius.circular(10)),
                                          child: TextButton(
                                            onPressed: () {
                                              //EditShipperDetail(context, item);
                                            },
                                            child: Text(
                                              'Đang đợi',
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  )
                                ],
                              ),

                            ],

                          );
                        },
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      /*globals.currentShop = null;
                      globals.currentShipper = null;
                      WalletHistory.reset();

                      pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AppScreen<EditStore>()),
                      );*/
                    },
                    child: Container(
                      color: Color(0xffFFFFFF),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child:  Text(
                              'Danh Sách Học Sinh',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                /* globals.currentShop = null;
                              globals.currentShipper = null;
                              WalletHistory.reset();

                              pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AppScreen<EditStore>()),
                              );*/
                              },
                              icon: Icon(Icons.add_circle_outlined,
                                color: Colors.greenAccent,)
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: getBottomTab(context, 3),
    );
  }
}
