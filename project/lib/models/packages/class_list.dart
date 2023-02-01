import 'package:project/config/config.dart';
import 'package:project/networks/http_app.dart' as httpApp;
class ClassList{
  late dynamic id;
  late dynamic classname;

  ClassList ({
   required this.id,
   required this.classname,
});

  factory ClassList.fromJson(Map<String, dynamic> json) {
    return ClassList(
      id: json['id'],
      classname: json['classname'],
    );
  }
  static Future fetchApiFind(int class_id) async {
    var json = await httpApp.fetchApiData(API_CLASS_DETAIL + "?class_id=${class_id}");
    if (json == null) return null;

    //Hoi fix chut -> giam loi goi ve sau
    var list = json as List;
    var availableList = list.map((e) => ClassList.fromJson(e)).toList();

    return availableList;
  }

  @override
  String toString() {
    return 'ClassList{id: $id, classname: $classname}';
  }
}