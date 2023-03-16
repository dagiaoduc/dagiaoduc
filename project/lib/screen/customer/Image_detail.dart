import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:dismissible_page/dismissible_page.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:project/components/app_screen.dart';
import 'package:project/components/main_state.dart';
import 'package:flutter/material.dart';
import 'package:project/screen/customer/folder_detail.dart';

class ImageDetail extends MainState{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      extendBody: true,
      body: DismissiblePage(
        onDismissed: (){
          pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AppScreen<FolderDetail>()),
          );
        },
        direction: DismissiblePageDismissDirection.multi,
        child: Hero(
          tag: "2",
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(

                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  child: Image.network('https://demo.ziczacvn.com/uploads/stores/160/2023/03/2.png',fit: BoxFit.cover,),
                ),
              ),

              Container(
                alignment: Alignment.bottomCenter,
                //color: Colors.black.withOpacity(0.3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () async {
                        var response = await Dio().get(
                            "https://demo.ziczacvn.com/uploads/stores/160/2023/03/2.png",
                            options: Options(responseType: ResponseType.bytes));
                        final result = await ImageGallerySaver.saveImage(
                            Uint8List.fromList(response.data),
                            quality: 100,
                            name: "hello");
                        print(result);
                      },
                      icon: Icon(Icons.download_outlined,color: Colors.green),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.delete_forever,color: Colors.red,),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}