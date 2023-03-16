import 'package:dismissible_page/dismissible_page.dart';
import 'package:project/components/app_screen.dart';
import 'package:project/components/main_state.dart';
import 'package:flutter/material.dart';
import 'package:project/screen/customer/Image_detail.dart';
import 'package:project/screen/customer/gallery_screen.dart';

class FolderDetail extends MainState{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){
                    pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AppScreen<GalleryScreen>()),
                    );
                  }, icon:Icon(Icons.arrow_back_ios,color: Colors.black45,) ),
                  Text('KHO ẢNH', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: (){}, icon:Icon(Icons.add_a_photo,color: Colors.black45,),),
                  IconButton(onPressed: (){}, icon:Icon(Icons.more_horiz_outlined,color: Colors.black45,),),
                ],
              ),

            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: 45,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                context.pushTransparentRoute(AppScreen<ImageDetail>());
              },
              child: Container(
                decoration: BoxDecoration(
                  //color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                    child: Hero(
                      tag: 'btn$index',
                      child: Image.network('https://demo.ziczacvn.com/uploads/stores/160/2023/03/2.png',fit: BoxFit.cover,)),
                    ),
              ),
            );
          },
        ),
      ),
    );
  }

}