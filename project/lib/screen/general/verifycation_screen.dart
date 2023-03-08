import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/components/app_screen.dart';
import 'package:project/components/main_state.dart';
import 'package:project/screen/general/forgot_password_screen.dart';
import 'package:project/screen/general/login_screen.dart';


class VerifycationScreen extends MainState {
  late List<String> otp = <String>[];

  @override
  void initState() {
    super.initState();
    otp.add("0");
    otp.add("0");
    otp.add("0");
    otp.add("0");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:  Container(
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
                      child: Text("XÁC THỰC TÀI KHOẢN",textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,
                          maxLines: 1, style: TextStyle(color:Colors.black,fontSize: 18, fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top:8 ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.2,
                    alignment: Alignment.center,
                    child: Image(
                      image: NetworkImage('https://demo.ziczacvn.com/uploads/stores/160/2023/03/thiet-ke-logo-truong-mam-non-4-removebg-preview.png'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 35, bottom: 20),
                    child: Text("Nhập mã OTPs",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for(int i =0;i<4;i++)
                    Flexible(
                      child:  Container(
                        width: 54,
                        height: 58,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xff171717),
                            width: 1,
                          ),
                        ),
                        child: TextFormField(
                          onChanged: (value){
                            print('${i} - ${value}');
                            otp[i] = value;
                            if(value.length==1){
                              FocusScope.of(context).nextFocus();
                            }
                            if(value.isEmpty){
                              FocusScope.of(context).previousFocus();
                            }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          style: TextStyle(
                              color: Color(0xff171717),
                              fontWeight: FontWeight.normal,
                              fontSize: 28),
                        ),
                      ),
                    ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("Bạn chưa nhận được mã OTPs!"),
                  ),
                  TextButton(
                    onPressed: () {
                      pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AppScreen<ForgotPwdScreen>()),
                      );
                    },
                    child: Text("Gửi lại"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child:  Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.8,
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      margin: const EdgeInsets.only(top: 35),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.greenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: const Text('XÁC THỰC',
                            style: TextStyle(
                                color: Colors.white, fontSize: 18)),
                        onPressed: () {
                          /*UserInfo.otp = otp[0] + otp[1] + otp[2] + otp[3];
                          //print(UserInfo.otp);
                          pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AppScreen<NewPwdScreen>()),
                          );*/
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}