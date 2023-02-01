import 'package:flutter/material.dart';
import 'package:project/components/main_state.dart';



class ClassListScreen extends MainState {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width:  MediaQuery.of(context).size.width,
          height:  MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          padding: EdgeInsets.only(top: 20),
          child:Column(
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
                height: MediaQuery.of(context).size.height,
                child: SizedBox(
                  child: ListView.builder(
                      itemBuilder: (context, index){
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width:  MediaQuery.of(context).size.width-20,
                              decoration: BoxDecoration(
                                color: Colors.cyanAccent,
                              ),
                              height:50,
                              margin: EdgeInsets.only(top: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'HALOO',
                                        overflow: TextOverflow.ellipsis,
                                        textAlign:TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                        EdgeInsets.fromLTRB(0, 0, 0, MediaQuery.of(context).size.height * 0.01),
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
                                                ///EditShipperDetail(context, item);
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
                                ],
                              ),
                            ),
                          ],
                        );
                      }
                  ),
                ),
              ),
            ],
          )
        ) ,
      ),
      bottomNavigationBar: getBottomTab(context, 1),
    );
  }
}
