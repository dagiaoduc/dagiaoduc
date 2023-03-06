import 'package:flutter/material.dart';
import 'package:project/components/main_state.dart';
import 'package:project/models/utils/option_model.dart';

class RegsiterScreen extends MainState {
  String? _selected  ='';
  List<OptionModel> roleList = [
    OptionModel(value: "1", title: "Giáo Viên"),
    OptionModel(value: "0", title: "Phụ huynh"),
  ];
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
                child: TextField(
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
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 5, left: 30, bottom: 5, right: 30),
                child: TextField(
                  controller: phoneController,
                  enableSuggestions: false,
                  autocorrect: false,
                  obscureText: true,
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
                padding: EdgeInsets.only( left: 30, right: 30),
                child: DropdownButtonFormField<dynamic>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.person_add_alt),
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
                  hint: Text('Vai trò'),
                  value: _selected!.isNotEmpty ? _selected:null,
                  items: roleList
                      .map(
                        (item) => DropdownMenuItem<dynamic>(
                      value: item.value,
                      child:  Text(
                        item.title,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ).toList(),
                  onChanged: (value) => setState(() => _selected = value!),
                ),
              ),

              Container(
                child: TextButton(
                  onPressed: () {
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


}
