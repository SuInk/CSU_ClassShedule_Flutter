import 'dart:io';
import 'dart:async';
import 'package:dio/dio.dart';

class HttpUtil {
  List _Cookies = [];
  Dio dio;

  HttpUtil() {
    dio = new Dio();
    //TODO: built-in CookieJar
//    dio.interceptors.add(CookieManager(CookieJar()));
  }

  List getCookies() {
    return _Cookies;
  }

  Future<String> getWithCookie(String url) async {
    Response response = await _get(url);

    //TODO: WHY HERE WILL BE CALLED TWICE?
    if (response.headers['set-cookie'] != null) {
      _Cookies = response.headers['set-cookie'];
    }
//    print('教务系统rerep${response}');
    return response.data.toString();
  }

  Future<String> get(String url) async {
    Response response = await _get(url);
    return response.data.toString();
  }

  Future<Response> _get(String url) async {
    Response response = await dio.get(url,
        options: Options(
          headers: {'Cookie': _Cookies.toString()},
        ));
    return response;
  }

  Future<String> post(String url, Map jsonMap) async {
    Response response = await dio.request(url,
        data: jsonMap,
        options: Options(
          method: 'post',
          followRedirects: false,
          validateStatus: (status) { return status < 500;},
          contentType: "application/x-www-form-urlencoded",
          headers: {'Cookie': _Cookies.toString()},

        ));

    print('登录请求${response.toString()}');
    return response.data.toString();
  }
}