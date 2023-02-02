import 'package:flutter/material.dart';
import 'package:project/components/main_state.dart';
import 'package:project/models/packages/class_list.dart';



class ClassListScreen extends MainState {
List<Class> classList = [
  Class(id: 1, classname:'Hoa Hong'),
  Class(id: 2, classname: 'Hoa Ban Trang'),
  Class(id: 3, classname: 'Hoa Ban Trang1'),
  Class(id: 4, classname: 'Hoa Ban Trang2'),
  Class(id: 5, classname: 'Hoa Ban Trang3213131231'),
  Class(id: 6, classname: 'Hoa Ban Trang4'),
  Class(id: 7, classname: 'Hoa Ban Trang5'),
  Class(id: 8, classname: 'Hoa Ban Trang5'),
  Class(id: 9, classname: 'Hoa Ban Trang5'),
  Class(id: 10, classname: 'Hoa Ban Trang5'),
  Class(id: 11, classname: 'Hoa Ban Trang5'),


];
 var _controller = ScrollController();

 @override
 void initStare() {
   super.initState();
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width:  MediaQuery.of(context).size.width,
            height:  MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            padding: EdgeInsets.only(top: 20),
            child:SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height:  50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            onPressed: (){

                            },
                            icon: Icon(Icons.arrow_back_outlined),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 40),
                          alignment: Alignment.centerLeft,
                          child: Text("DANH SÁCH LỚP",textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,
                              maxLines: 1, style: TextStyle(color:Colors.black,fontSize: 18, fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.only(left: 5,right: 5, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width:  MediaQuery.of(context).size.width-200,
                          height: 180,
                          child:  Material(
                            shape: CircleBorder(),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: InkWell(
                              splashColor: Colors.black26,
                              onTap: () {},
                              child: Ink.image(
                                image: NetworkImage('https://demo.ziczacvn.com/uploads/stores/160/2022/12/2022-12-17-1049-rectangle-98.png'),
                                fit: BoxFit.cover, //Add this line for center crop or use 2nd way
                                height: 70,
                                width: 70,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            width:  MediaQuery.of(context).size.width-180,
                            height: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 35,
                                  child:  TextField(
                                    //controller: emailController,
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      hintText: "Nguyễn Hương GIANG HOANG KIM",
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(color: Colors.grey),
                                    ),
                                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  child:  TextField(
                                    //controller: emailController,
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      hintText: "GIAO VIÊN CHỦ NHIỆM",
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(color: Colors.grey),

                                    ),
                                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  child: TextField(
                                    //controller: emailController,
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      hintText: "18/06/1989",
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(color: Colors.grey),
                                    ),
                                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  child:  TextField(
                                    //controller: emailController,
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      hintText: "089745621",
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(color: Colors.grey),
                                    ),
                                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                                  ),
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.6,
                    alignment: Alignment.center,
                    child:
                    ListView.builder(
                        itemCount: classList == null ? 0 :classList.length,
                        itemBuilder: (context, index){
                          Class cls = classList[index];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width:  MediaQuery.of(context).size.width-20,
                                decoration: BoxDecoration(
                                  color: Colors.cyanAccent,
                                ),
                                height:50,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                       width:  MediaQuery.of(context).size.width*0.2,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '${cls.classname}',
                                            overflow: TextOverflow.ellipsis,
                                            textAlign:TextAlign.center,
                                            maxLines: 2,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    ),
                                    Container(
                                      child:  Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 10),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.redAccent,
                                                    borderRadius:
                                                    BorderRadius.circular(20)),
                                                child: TextButton(
                                                  onPressed: () {

                                                  },
                                                  child: Text(
                                                    'Xóa',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 12,
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
                                                decoration: BoxDecoration(
                                                    color: Colors.orangeAccent,
                                                    borderRadius:
                                                    BorderRadius.circular(20)),
                                                child: TextButton(
                                                  onPressed: () {

                                                  },
                                                  child: Text(
                                                    'Điểm danh',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 12,
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
                                                decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    borderRadius:
                                                    BorderRadius.circular(20)),
                                                child: TextButton(
                                                  onPressed: () {
                                                    /* globals.currentShipper = item;
                                                  globals.currentShop = null;
                                                  WalletHistory.reset();
                                                  Navigator.pop(context);
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) => AppScreen<
                                                            ViewShipperProfile>()),
                                                  );*/
                                                  },
                                                  child: Text(
                                                    'Xem chi tiết',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10)),
                            ],
                          );
                        }
                    ),
                  ),
                ],
              ),
            ),
          ) ,
        ),
      ),
      bottomNavigationBar: getBottomTab(context, 1),
    );
  }
}
