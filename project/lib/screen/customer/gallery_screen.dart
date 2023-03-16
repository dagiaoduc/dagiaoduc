import 'package:project/components/app_screen.dart';
import 'package:project/components/main_state.dart';
import 'package:flutter/material.dart';
import 'package:project/screen/customer/folder_detail.dart';

class GalleryScreen extends MainState{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_ios) ),
                          Text('KHO ẢNH', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(onPressed: (){}, icon:Icon(Icons.drive_folder_upload,),),
                          IconButton(onPressed: (){}, icon:Icon(Icons.more_horiz_outlined),),
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height-20,
                  child: GridView.builder(

                    itemCount: 45,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 4.0,
                          mainAxisSpacing: 4.0,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){
                            pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AppScreen<FolderDetail>()),
                            );
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.network('https://demo.ziczacvn.com/uploads/stores/160/2023/03/folder-removebg-preview.png'),
                                Text('Folder1'),
                              ],
                            ),
                          ),
                        );
                      },
                  ),
                ),
              ],
            ),
          ),
        ) ,
      ),
      bottomNavigationBar: getBottomTab(context, 3),
    );
  }

}