import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:project/components/app_screen.dart';
import 'package:project/components/main_state.dart';
import 'package:project/screen/general/login_screen.dart';

class WellComeScreen extends MainState{

  changeScreen(){
    Future.delayed(const Duration(seconds: 5),(){
      pop(context);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AppScreen<LoginScreen>()),
      );
    });
  }
  void initState(){
    changeScreen();
    setState(() {

    });
    super.initState();
  }
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
                child: LoadingAnimationWidget.halfTriangleDot(
                  color: Colors.greenAccent,
                  size: 200,
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