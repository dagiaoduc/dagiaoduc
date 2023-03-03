import 'package:flutter/material.dart';
import 'package:project/components/main_state.dart';

class WellComeScreen extends MainState{

  @override
  Widget build (BuildContext context){
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child:  Image(
                  image: NetworkImage('https://demo.ziczacvn.com/uploads/stores/160/2023/03/thiet-ke-logo-truong-mam-non-4.jpg'),
                  height:250,
                  width: 300,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
              ),
              Container(
                child: Text('STEAM',style: TextStyle(decoration:TextDecoration.none,fontSize: 55, fontWeight:FontWeight.bold, ) ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
              ),
              Container(
                child: Text('Steam Garden School', style: TextStyle(decoration:TextDecoration.none,fontSize: 25, fontWeight:FontWeight.w500, ),),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
              ),
            ],
          ),
        ),
      ),
    );
  }
}