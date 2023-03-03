class Students {
  late dynamic id;
  late dynamic studentId;
  late dynamic studentname;
  late dynamic nickname;
  late dynamic gender;
  late dynamic birthday;
  late dynamic thumbnail;

  Students({
    required this.id,
    required this.studentId,
    required this.studentname,
    required this.nickname,
    required this.gender,
    required this.birthday,
    required this.thumbnail,
  });

  factory Students.fromJson(Map<String, dynamic> json) {
    return Students(
        id: json['id'],
        studentId: json['studentId'],
        studentname: json['studentname'],
        nickname: json['nickname'],
        gender: json['gender'],
        birthday: json['birthday'],
        thumbnail: json['thumbnail']);
  }

  @override
  String toString() {
    return 'Students{id: $id, studentId: $studentId,studentname: $studentname,nickname: $nickname,gender: $gender,birthday: $birthday,thumbnail: $thumbnail,}';
  }
}
