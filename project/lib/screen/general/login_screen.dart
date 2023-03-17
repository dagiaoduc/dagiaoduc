import 'package:flutter/material.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:project/components/app_screen.dart';
import 'package:project/components/main_state.dart';
import 'package:project/screen/customer/homescreen.dart';
import 'package:project/screen/general/auth_service.dart';
import 'package:project/screen/general/forgot_password_screen.dart';
import 'package:project/screen/general/regsiter_screen.dart';

class LoginScreen extends MainState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
         child: Container(
           margin: const EdgeInsets.only(top: 10),
           width:  MediaQuery.of(context).size.width,
           height:  MediaQuery.of(context).size.height,
           decoration: BoxDecoration(
               color: Colors.white,
               /*image: DecorationImage(
                 image: NetworkImage('https://demo.ziczacvn.com/uploads/stores/160/2023/03/hinh-anh-hinh-nen-mam-non-an-tuong.jpg'),
                 fit: BoxFit.fill,
                 alignment: Alignment.center,
                 colorFilter: ColorFilter.mode(Colors.white.withOpacity(1.0), BlendMode.modulate),
               )*/
           ),
          child: Center(
             child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child:  Image(
                  image: NetworkImage('https://demo.ziczacvn.com/uploads/stores/160/2023/03/thiet-ke-logo-truong-mam-non-4-removebg-preview.png'),
                  height:190,
                  width: 280,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5),
                padding:
                    EdgeInsets.only(top: 10, left: 30, bottom: 10, right: 30),
                child: TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    hintText: "Số điện thoại",
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
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 10, left: 30, bottom: 5, right: 30),
                child: TextField(
                  controller: pwdController,
                  enableSuggestions: false,
                  autocorrect: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    hintText: "Mật Khẩu",
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
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(left:  25, right:  25),
                child: TextButton(
                  onPressed: () {
                    pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AppScreen<ForgotPwdScreen>()),
                    );
                  },
                  child: Text(
                    'Quên mật khẩu?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.redAccent),
                  ),
                ),
              ),

              Container(
                height: 40,
                width:  MediaQuery.of(context).size.width ,
                padding: const EdgeInsets.only(left:  25, right:  25),
                margin: const EdgeInsets.only(top: 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('ĐĂNG NHẬP',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  onPressed: () {
                    ValidateLogin(context);
                  },
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Stack(
                  alignment: Alignment.center,
                    children: [
                      Divider(color: Colors.cyanAccent, thickness: 1,),
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.only(left:  25, right:  25),
                          child: Text('HOẶC ĐĂNG NHẬP THEO NỀN TẢNG',style: TextStyle(color: Colors.red, fontSize: 10, fontWeight: FontWeight.bold),),
                      )
                    ],

                ),
              ),

              Container(
                padding: const EdgeInsets.only(left:  25, right:  25),
                margin: const EdgeInsets.only(top: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: (){
                          _loginFacebook();
                        },
                        icon: Image.network('https://demo.ziczacvn.com/uploads/stores/160/2023/03/facebook-logo-2019.png')),
                    IconButton(
                        onPressed: (){

                        },
                        icon: Image.network('https://demo.ziczacvn.com/uploads/stores/160/2023/03/unnamed.png')),
                    IconButton(
                        onPressed: (){
                          AuthService().signInWithGoogle();
                        },
                        icon: Image.network('https://demo.ziczacvn.com/uploads/stores/160/2023/03/gg.png')),
                    IconButton(
                        onPressed: (){
                          AuthService().signInWithApple();
                        },
                        icon: Image.network('https://demo.ziczacvn.com/uploads/stores/160/2023/03/apple-logo.png')),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Container(
                child: TextButton(
                  onPressed: () {
                    pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AppScreen<RegsiterScreen>()),
                    );
                  },
                  child: Text(
                    'Bạn chưa đăng ký tài khoản? Đăng ký',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Colors.redAccent),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }

  var emailController = TextEditingController();
  var pwdController = TextEditingController();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var confirmPwdController = TextEditingController();

  Future<void> ValidateLogin(BuildContext context)async {
    String phone = phoneController.text;
    String pwd = pwdController.text;
    if(phone.length > 10 || phone.length < 10 ){
      return _showMyDialog(context, 'Nhập số điện thoại không đúng');
    }
    if(pwd.length < 6 ){
      return _showMyDialog(context, 'Độ dài mật khẩu phải lớn hơn 6 kí tự');
    } else{
      pop(context);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AppScreen<HomeScreen>()),
      );
    }

  }
  Future<void> _showMyDialog(BuildContext context, String msg) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('THÔNG BÁO LỖI'),
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
                Navigator.pop(context, 'Cảm Ơn');
              },
              child: const Text('Cảm Ơn'),
            ),
          ],
        );
      },
    );
  }
  _loginFacebook() async {
    // Create an instance of FacebookLogin
    final fb = FacebookLogin();

// Log in
    final res = await fb.logIn(permissions: [
      FacebookPermission.publicProfile,
      FacebookPermission.email,
    ]);

// Check result status
    switch (res.status) {
      case FacebookLoginStatus.success:
      // Logged in

      // Send access token to server for validation and auth
        final FacebookAccessToken? accessToken = res.accessToken;
        print('Access token: ${accessToken!.token}');

        // Get profile data
        final profile = await fb.getUserProfile();
        print('Hello, ${profile!.name}! Your ID: ${profile!.userId}');

        // Get user profile image url
        final imageUrl = await fb.getProfileImageUrl(width: 100);
        print('Your profile image: $imageUrl');

        // Get email (since we request email permission)
        final email = await fb.getUserEmail();
        // But user can decline permission
        if (email != null)
          print('And your email is $email');
        ChangeScreen(context);
        break;
      case FacebookLoginStatus.cancel:
      // User cancel log in
        break;
      case FacebookLoginStatus.error:
      // Log in failed
        print('Error while log in: ${res.error}');
        break;
    }



  }
  void ChangeScreen(BuildContext context){
    pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AppScreen<HomeScreen>()),
    );
  }
}
