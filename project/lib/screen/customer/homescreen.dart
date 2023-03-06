
import 'package:flutter/material.dart';
import 'package:project/components/main_state.dart';

class HomeScreen extends MainState{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Container(
        color: Colors.red,
      ),
      bottomNavigationBar: getBottomTab(context, 0),
    );

  }
}
