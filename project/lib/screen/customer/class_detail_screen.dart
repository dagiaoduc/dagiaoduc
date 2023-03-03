import 'package:flutter/material.dart';
import 'package:project/components/main_state.dart';

class ClassDetailScreen extends MainState {
  @override
  Widget build(BuildContext context) {
    final x = MediaQuery.of(context).size.width;
    final y = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            padding: EdgeInsets.only(top: 20),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_outlined),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 40),
                          alignment: Alignment.centerLeft,
                          child: Text("DANH SÁCH HỌC SINH",
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
                  ),
                  Card(
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Thêm học sinh',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 18,
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
                            icon: Icon(Icons.add_circle_outline_outlined,
                                color: Color(0xffFC6F65)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
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
                              alignment: Alignment.center,
                              height: 35,
                              decoration:BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Text('Tổng số học sinh: '+ '16',style: TextStyle(color:Colors.white,fontSize: 13, fontWeight: FontWeight.w500))
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 10 )),
                            Container(
                                width: x*0.4,
                                alignment: Alignment.center,
                                height: 35,
                                decoration:BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child:Text('Nghỉ học có phép: ' + '02',style: TextStyle(color:Colors.white,fontSize: 13, fontWeight: FontWeight.w500))
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: x*0.4,
                                alignment: Alignment.center,
                                height: 35,
                                decoration:BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child:Text('Học sinh trong lớp: ' + '12',style: TextStyle(color:Colors.white,fontSize: 13, fontWeight: FontWeight.w500))
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 10 )),
                            Container(
                                width: x*0.4,
                                alignment: Alignment.center,
                                height: 35,
                                decoration:BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child:Text('Nghỉ học không phép: ' + '02',style: TextStyle(color:Colors.white,fontSize: 13, fontWeight: FontWeight.w500))
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration:BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 100,
                    width: x,
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text('GIÁO VIÊN PHỤ TRÁCH:', style: TextStyle(color:Colors.white,fontSize: 13, fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          height: 50,
                          child: ListView.builder(
                              padding: const EdgeInsets.all(10),
                              itemCount: 3,
                              itemBuilder: (context, index){
                                return Container(
                                  height: 20,
                                  child: Text('NGuyễn Hoàng Phương Nam', style: TextStyle(color:Colors.white,fontSize: 13, fontWeight: FontWeight.bold)),
                                );
                              },
                          ),
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: getBottomTab(context, 2),
    );
  }
}