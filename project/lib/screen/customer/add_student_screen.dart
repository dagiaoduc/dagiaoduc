import 'package:flutter/material.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';
import 'package:project/components/app_screen.dart';
import 'package:project/components/main_state.dart';
import 'package:project/screen/customer/class_detail_screen.dart';
import 'package:project/screen/customer/homescreen.dart';

class ApiImage {
  final String imageUrl;
  final String id;
  ApiImage({
    required this.imageUrl,
    required this.id,
  });
}
class AddStudent extends MainState{
  DateTime date = DateTime.now();
  String dateP = 'Ngày sinh';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: (){
                        pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AppScreen<ClassDetailScreen>()),
                        );
                      },
                      icon: Icon(Icons.arrow_back_ios),
                  ),
                  Text('Thêm Học Sinh', style: TextStyle(color: Colors.black,fontSize: 25)),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                color: Color.fromRGBO(158, 147, 147, 0),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Họ và Tên:', style: TextStyle(color:Colors.black, fontSize: 20),textAlign: TextAlign.left,),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        TextFormField(
                          controller: nameController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: "Họ và Tên",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey),
                            contentPadding: const EdgeInsets.all(15.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 20)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Biệt danh:', style: TextStyle(color:Colors.black, fontSize: 20),textAlign: TextAlign.left,),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        TextFormField(
                          controller: nicknameController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.account_circle,color: Colors.grey),
                            hintText: "Nhập biệt danh",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey),
                            contentPadding: const EdgeInsets.all(15.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 20)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Chọn ngày sinh:', style: TextStyle(color:Colors.black, fontSize: 20),textAlign: TextAlign.left,),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        Container(
                          decoration:BoxDecoration(
                            border: Border.all(color: Colors.greenAccent),
                            borderRadius: BorderRadius.circular(15),
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
                                    icon: Icon(Icons.calendar_month_outlined,)),
                              ),
                              Container(
                                  alignment: Alignment.center,
                                  child: Text(dateP)
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 20)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nhập số điện thoại phụ huynh:', style: TextStyle(color:Colors.black, fontSize: 20),textAlign: TextAlign.left,),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        TextField(
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
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                              borderRadius: BorderRadius.circular(15),
                            ),

                          ),
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 20)),
                    Column(
                      children: [
                        FormBuilderImagePicker(
                          name: 'photos',
                          displayCustomType: (obj) =>
                          obj is ApiImage ? obj.imageUrl : obj,
                          decoration: const InputDecoration(labelText: 'Chọn ảnh đại diện',labelStyle: TextStyle(fontSize:28 )),
                          maxImages: 1,
                          previewAutoSizeWidth: true,
                          previewMargin: const EdgeInsetsDirectional.only(end: 8),
                          fit: BoxFit.cover,
                          initialValue: [],
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 50)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.greenAccent, // background
                        onPrimary: Colors.white,
                        minimumSize: Size(MediaQuery.of(context).size.width, 50),// foreground
                      ),
                      onPressed: (){
                        pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AppScreen<ClassDetailScreen>()),
                        );
                      },
                      child: Text('Cập nhật thông tin', style: TextStyle(color: Colors.white)),
                    )

                  ],
                ),
              ),
            ],
          ),
        ) ,
      ),

    );
  }
  var nicknameController = TextEditingController();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  Future<void> ValidateAddStudent(BuildContext context)async {

    String name  = nameController.text;
    String nickname = nicknameController.text;
    String phone = phoneController.text;

    if(name == null || (name != null && name.isEmpty)){
      return _showMyDialog(context, 'Không được bỏ trống tên');
    }

    if(phone.length > 10 || phone.length < 10 ){
      return _showMyDialog(context, 'Nhập số điện thoại không đúng');
    }else{
      pop(context);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AppScreen<ClassDetailScreen>()),
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