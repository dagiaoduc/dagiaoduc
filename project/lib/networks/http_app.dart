import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:project/config/config.dart';
import 'package:shared_preferences/shared_preferences.dart';


Future fetchApiData(String url) async {
  print("Call API");
  print(url);
  final response = await http.get(Uri.parse(url), headers: headers);
  print(response.body);
  if (response.statusCode == 200) {
    updateCookie(response);
    print("Call API => Body");
    return jsonDecode(response.body);
  }

  return null;
}

Future uploadFileSync(String path) async {
  var dio = new Dio();
  dio.options.baseUrl = BASE_URL_REST;
  dio.options.connectTimeout = 5000; //5s
  dio.options.receiveTimeout = 5000;
  dio.options.headers = headers;
  FormData formData = FormData.fromMap(
    {
      'tags': 'browser_upload',
      'isWaterMask': 'false',
      'watermask': '',
      'idCat': '0',
      'color': '#ffffff',
      'enabled': '1',
      'file': await MultipartFile.fromFile(path,
          filename: '${path.hashCode}.jpg')
    },
  );
  dynamic response = await dio.post('/api/upload', data: formData);
  dynamic obj = jsonDecode('${response}');
  return obj['url'];
}

Future fetchApiContent(String url) async {
  print(url);
  final response = await http.get(Uri.parse(url), headers: headers);

  if (response.statusCode == 200) {
    updateCookie(response);

    return response.body;
  }

  return "";
}

Future postApiData(String url, Map<String, dynamic> formData) async {
  print(url);
  final response = await http.post(
    Uri.parse(url),
    headers: headers,
    body: jsonEncode(formData),
  );
  print(response.body);
  if (response.statusCode == 200) {
    updateCookie(response);
    print(response.body);
    return jsonDecode(response.body);
  }
  // print(response.body);
  return null;
}

Future postApiContent(String url, Map<String, dynamic> formData) async {
  print(url);
  final response = await http.post(
    Uri.parse(url),
    headers: headers,
    body: jsonEncode(formData),
  );
  print(response.body);
  if (response.statusCode == 200) {
    updateCookie(response);
  }
  return response.body;
}

//Network services - cookie
late Map<String, String> headers = {"content-type": "application/json"};
late Map<String, dynamic> cookies = {};

Future<void> updateCookie(http.Response response) async {
  String? allSetCookie = response.headers['set-cookie'];

  if (allSetCookie != null) {
    var setCookies = allSetCookie.split(',');

    for (var setCookie in setCookies) {
      var cookies = setCookie.split(';');

      for (var cookie in cookies) {
        _setCookie(cookie);
      }
    }

    headers['cookie'] = _generateCookieHeader();
  }

  var json = jsonEncode(cookies);
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('cookies', json);
}

Future<void> addCookie(String key, String value) async {
  cookies[key] = value;

  //Save
  var json = jsonEncode(cookies);
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('cookies', json);

  headers['cookie'] = _generateCookieHeader();
}

void _setCookie(String? rawCookie) {
  if (rawCookie != null) {
    var keyValue = rawCookie.split('=');
    if (keyValue.length == 2) {
      var key = keyValue[0].trim();
      var value = keyValue[1];
      // ignore keys that aren't cookies
      if (key == 'path' || key == 'expires') return;

      cookies[key] = value;
    }
  }
}

Future initCookie() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  var json = prefs.getString('cookies');
  var cookieJson = (json != null && json != "") ? json : "";

  if (cookieJson != "") {
    cookies = jsonDecode(cookieJson);
    headers['cookie'] = _generateCookieHeader();
  }
}

String _generateCookieHeader() {
  String cookie = "";

  for (var key in cookies.keys) {
    if (cookie.isNotEmpty) cookie += ";";
    cookie += key + "=" + cookies[key]!;
  }

  return cookie;
}
