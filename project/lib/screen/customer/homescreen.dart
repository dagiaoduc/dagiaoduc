
import 'package:flutter/material.dart';
import 'package:project/components/main_state.dart';

class HomeScreen extends MainState{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://demo.ziczacvn.com/uploads/stores/160/2023/03/avartar.png'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(width: 2, color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                      onPressed: (){},
                      child: Text(
                          'Bạn đang nghĩ gì           ',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black
                          ),
                      ),
                  ),
                  IconButton(
                      onPressed: (){}, 
                      icon: Image.network('https://demo.ziczacvn.com/uploads/stores/160/2023/03/vote.png')
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: getBottomTab(context, 0),
    );

  }
}
