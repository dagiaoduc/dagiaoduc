import 'package:project/config/config.dart';
import 'package:project/networks/http_app.dart' as httpApp;

class Class{
  late dynamic id;
  late dynamic classname;

  Class ({
   required this.id,
   required this.classname,
});

  factory Class.fromJson(Map<String, dynamic> json) {
    return Class(
      id: json['id'],
      classname: json['classname'],
    );
  }
  static Future fetchApiFind(int class_id) async {
    var json = await httpApp.fetchApiData(API_CLASS_FIND + "?class_id=${class_id}");
    if (json == null) return null;

    //Hoi fix chut -> giam loi goi ve sau
    var list = json as List;
    var availableList = list.map((e) => Class.fromJson(e)).toList();

    return availableList;
  }

  factory Class.empty(){
      return Class(
          id: 0,
          classname: ''
      );
  }
  bool isEmpty() {
    if (id == 0 && classname == '') {
      return true;
    }
    return false;
  }

  @override
  String toString() {
    return 'Class{id: $id, classname: $classname}';
  }
}