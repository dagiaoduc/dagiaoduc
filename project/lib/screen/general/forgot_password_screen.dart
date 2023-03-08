import 'package:flutter/material.dart';
import 'package:project/components/app_screen.dart';
import 'package:project/components/main_state.dart';
import 'package:project/screen/general/login_screen.dart';
import 'package:project/screen/general/verifycation_screen.dart';



class ForgotPwdScreen extends MainState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
        Container(
          width:  MediaQuery.of(context).size.width,
          height:  MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          padding: EdgeInsets.only(top: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width:  MediaQuery.of(context).size.width ,
                height:  MediaQuery.of(context).size.height*0.08,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width:  MediaQuery.of(context).size.width *0.15,
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        onPressed: (){
                          pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AppScreen<LoginScreen>()),
                          );
                        },
                        icon: Icon(Icons.arrow_back_outlined),
                      ),
                    ),
                    Container(
                      width:  MediaQuery.of(context).size.width *0.85,
                      padding: EdgeInsets.only(right: 50),
                      alignment: Alignment.center,
                      child: Text("QUÊN MẬT KHẨU",textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,
                          maxLines: 1, style: TextStyle(color:Colors.black,fontSize: 18, fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.18,
                alignment: Alignment.center,
                child: Image(
                  image: NetworkImage('https://demo.ziczacvn.com/uploads/stores/160/2023/03/thiet-ke-logo-truong-mam-non-4-removebg-preview.png'),
                ),
              ),
              Container(
                padding: EdgeInsets.only( top: 10),
                height:  MediaQuery.of(context).size.height*0.08,
                alignment: Alignment.bottomCenter,
                child: Text("Nhập Địa Chỉ Email",textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,
                    maxLines: 1, style: TextStyle(color:Colors.black,fontSize: 18, fontWeight: FontWeight.w500)),
              ),
              Container(
                height:  MediaQuery.of(context).size.height*0.15,
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top:20,left: 30, right: 30),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: "Email",
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding: const EdgeInsets.all(15.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  style: TextStyle(
                    color:Colors.black,fontSize: 14, fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                width:  MediaQuery.of(context).size.width ,
                height:  MediaQuery.of(context).size.height*0.06,
                padding: const EdgeInsets.only(left:  30, right:  30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child:  Text('YÊU CẦU LẤY LẠI MẬT KHẨU',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  onPressed: () {
                    //resetPwd(context);
                    pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AppScreen<VerifycationScreen>()),
                    );
                  },
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

  var emailController = TextEditingController();

  Future<void> resetPwd(BuildContext context) async {
    String email = emailController.text;
    if (email.isEmpty) {
      _showMyDialog(context, 'Vui lòng nhập email cần thay mật khẩu.');
      return;
    }
    //Gui yeu cau register
   // var msg = await UserInfo.fogotPwd(email);

    // if (msg != null && msg.status == 1) {
    //   _showMyDialog(context,
    //       'Chúng tôi đã gửi cho bạn một email hướng dẫn cách đổi lại mật khẩu vui lòng kiểm tra email và làm theo hướng dẫn!!!');
    // }
  }

  Future<void> _showMyDialog(BuildContext context, String msg) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('THÔNG BÁO'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(msg),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AppScreen<VerifycationScreen>()),
                );
              },
              child: const Text('Cảm Ơn'),
            ),
          ],
        );
      },
    );
  }
}