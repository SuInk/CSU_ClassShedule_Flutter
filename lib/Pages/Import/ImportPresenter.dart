import 'dart:convert';

import 'package:flutter/material.dart';
import '../../Resources/Url.dart';
import '../../Utils/HttpUtil.dart';
import '../../Resources/Constant.dart';
import '../../Utils/CourseParser.dart';

class ImportPresenter {
  HttpUtil httpUtil = new HttpUtil();

//  Future<Image> getCaptcha(double num) async {
//    String response = await httpUtil.getWithCookie(Url.URL_NJU_HOST);
//    print(response);
//    await httpUtil.getWithCookie(Url.URL_NJU_HOST);
//    List cookies = httpUtil.getCookies();
//    print(cookies);
//    return Image.network(
//        'http://elite.nju.edu.cn/jiaowu/ValidateCode.jsp?TimeCode=' +
//            num.toString() +
//            '100',
//        headers: {"Cookie": cookies.toString()});
// }

  Future<int> login(String usr, String pwd, String captcha) async {
    String url = Url.URL_CSU_HOST + Url.CSULoginUrl;
    String loginurl = Url.IndexUrl;
    String responses = await httpUtil.getWithCookie(Url.URL_CSU_HOST);
    String encodedusr = base64Encode(utf8.encode(usr));
    String encodedpwd = base64Encode(utf8.encode(pwd));
    print('账号${encodedusr}');
    print('密码${encodedpwd}');

    String response = await httpUtil.post(url, {
      'encoded': encodedusr +'%%%' + encodedpwd

    });
    //String responses = await httpUtil.get(loginurl);
    print('登录后的信息${response}');
    if (response.contains('userAccount'))
    //print('登录失败');
      return Constant.PASSWORD_ERROR;

    return Constant.LOGIN_CORRECT; //登录成功
//    response.then((String response) {
////      print(response);
//    }, onError: (e) {
//      print(e);
//    });
  }

  Future<bool> getClasses(BuildContext context,String termnum) async {
    String url = Url.URL_CSU_HOST + Url.ClassJson;
    String response = await httpUtil.post(url,{
    'xnxq01id': '2020-2021-1'

    });
    print('教室的信息${response.replaceAll('\\n\\n','},{')}');
    response = response.replaceAll('\\n\\n','\\n","xq":2,"kcmc":"某门课程..."}, {"jc":3,"title":"');
    List book = json.decode(response);
    print('课程${book[2]}');
    CourseParser cp = new CourseParser(book);
    String courseTableName = cp.parseCourseName();
    int rst = await cp.addCourseTable(courseTableName, context);
    try{
      await cp.parseCourse(rst);
      return true;
    } catch(e) {
      return false;
    }
//    print(rst);
//    Future<String> response = httpUtil.get(url);
//    response.then((String response) {
//      print(response);
//    }, onError: (e) {
//      print(e);
//    });
  }
}
