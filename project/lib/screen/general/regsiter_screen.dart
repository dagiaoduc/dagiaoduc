
import 'package:flutter/material.dart';
import 'package:project/components/app_screen.dart';
import 'package:project/components/main_state.dart';
import 'package:project/models/utils/option_model.dart';
import 'package:project/screen/customer/homescreen.dart';
import 'package:project/screen/general/login_screen.dart';

class RegsiterScreen extends MainState {
  DateTime date = DateTime.now();
  String dateP = 'Ngày sinh';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
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
              /* image: DecorationImage(
                 image: NetworkImage('https://demo.ziczacvn.com/uploads/stores/160/2023/03/hinh-anh-hinh-nen-mam-non-an-tuong.jpg'),
                 fit: BoxFit.fill,
                 alignment: Alignment.center,
                 colorFilter: ColorFilter.mode(Colors.white.withOpacity(1.0), BlendMode.modulate),
               ),*/
           ),
          child: Center(
             child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 5),
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
                    EdgeInsets.only(top: 5, left: 30, bottom: 5, right: 30),
                child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Họ và Tên",
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
                EdgeInsets.only(top: 5, left: 30, bottom: 5, right: 30),
                child: TextFormField(
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
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 5, left: 30, bottom: 5, right: 30),
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
                EdgeInsets.only(top:5, left: 30, bottom: 5, right: 30),
                child: TextFormField(
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
                padding:
                EdgeInsets.only(top: 5, left: 30, bottom: 5, right: 30),
                child: TextField(
                  controller: confirmPwdController,
                  enableSuggestions: false,
                  autocorrect: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    hintText: " Xác minh mật khẩu",
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
              Padding(padding: EdgeInsets.only(top:5)),
              Container(
                margin:
                EdgeInsets.only(top: 0, left: 30, bottom: 5, right: 30),

                //height: 35,
                decoration:BoxDecoration(
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      //alignment: Alignment.topCenter,
                      child: IconButton(
                        //alignment: Alignment.topCenter,
                          onPressed: () async{
                            DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: date,
                              firstDate: DateTime(1900),
                              lastDate: DateTime.now(),
                            );
                            if (newDate == null) return;
                            setState(() => date = newDate);
                            dateP = '${date.day}/${date.month}/${date.year}';
                          },
                          icon: Icon(Icons.edit_note,)),
                    ),
                    Container(
                        alignment: Alignment.center,
                        child: Text(dateP)
                    ),

                  ],
                ),
              ),

              Container(
                child: TextButton(
                  onPressed: () {
                    pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AppScreen<LoginScreen>()),
                    );
                  },
                  child: Text(
                    'Bạn đã có tài khoản? Đăng nhập ngay',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Colors.redAccent),
                  ),
                ),
              ),

              Container(
                height: 40,
                width:  MediaQuery.of(context).size.width ,
                padding: const EdgeInsets.only(left:  25, right:  25),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('ĐĂNG KÝ',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  onPressed: () {
                     ValidateRegister(context);
                  },
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
  var roleController = TextEditingController();
 Future<void> ValidateRegister(BuildContext context)async {
   String email = emailController.text;
   String name  = nameController.text;
   String pwd = pwdController.text;
   String phone = phoneController.text;
   String confirmpwd = confirmPwdController.text;
   if(name == null || (name != null && name.isEmpty)){
     return _showMyDialog(context, 'Không được bỏ trống tên');
   }
   if(email.isEmpty || !email.contains('@') || !email.contains('.') ){
     return _showMyDialog(context, 'Hãy nhập email đúng định dạng @***.**');
   }
   if(pwd.length < 6 ){
     return _showMyDialog(context, 'Độ dài mật khẩu phải lớn hơn 6 kí tự');
   }
   if(confirmpwd != pwd){
     return _showMyDialog(context, 'Nhập xác minh lại minh khẩu chưa giống');
   }
    if(phone.length > 10 || phone.length < 10 ){
     return _showMyDialog(context, 'Nhập số điện thoại không đúng');
   }else{
     pop(context);
     Navigator.push(
       context,
       MaterialPageRoute(builder: (context) => AppScreen<LoginScreen>()),
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
}
