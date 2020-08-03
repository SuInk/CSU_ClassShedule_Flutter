import 'dart:convert';
import 'package:flutter/material.dart' hide Element;
import '../Utils/States/MainState.dart';
import '../Models/CourseTableModel.dart';
import '../Models/CourseModel.dart';
import '../Resources/Constant.dart';

class CourseParser {
  final RegExp patten1 = new RegExp(r"(\d{1,2})(\d{1,2})节");
  final RegExp patten2 = new RegExp(r"(\d{1,2})-(\d{1,2})\(单*周\)");
  final RegExp patten3 = new RegExp(r"从第(\d{1,2})周开始");
  final RegExp patten4 = new RegExp(r"(\d+)(,\d+)*\(周\)");

  List html;
  List document;

  CourseParser(this.html) {
    document = html;
  }

  String parseCourseName() {
//    print('文件${document}');
    String element = '自动导入';
    print('课表名称${element}');
    return element;
  }

  Future<List<Course>> parseCourse(int tableId) async {
    List<Course> rst = [];
    print('开始');
    List elements = document;
//    print('开始');
    print('elements元素${elements[0]}');
    for (var i = 0;i + 1 < elements.length; i++) {
      // Time and Place
      print('开始');
      dynamic e = elements[i];
      print('e课程名称${e}');
      dynamic source = e.toString();
      List<dynamic> infos = source.split('\n');

      print('课程规则化${infos[0]}');

      String courseName = infos[0].substring(20, );
      print('课程规则化${courseName}');
      String courseTeacher = infos[1].substring(5, ) ?? '';
      print('课程规则化${courseTeacher}');
      String testLocation =
      (infos[5].length > 9) ? (infos[5].substring(5, )?? '') : '';
      print('课程规则化${testLocation}');

      //TODO: 自由时间
      // "自由时间 2-17周 详见主页通知"
      if (infos[2].contains('自由时间')) continue;
//        print(info);

      if (!infos[2].startsWith('周')) {
        throw (courseName);
      }
      // Get WeekTime
      List<String> strs = infos[3].split(' ');
      String weekStr = infos[3].substring(5, 6);
      weekStr = '周' + weekStr;
      print('课程规则化${weekStr}');
      // 异常测试
//        weekStr = '周零';
      int weekTime = _getIntWeek(weekStr);
      if (weekTime == 0) {
        throw (courseName);
      }
      print(weekTime);

      // Get Time
      int startTime, timeCount;
      String weekSeries;
      // 异常测试
//        String info="周四 节次：0102节 1-8(周)  仙Ⅱ-301";
      try {
        var time = patten1.firstMatch(infos.toString());
        print('课程规则化${time}');
        startTime = int.parse(time.group(1));
        timeCount = int.parse(time.group(2)) - startTime;
        weekSeries = _getWeekSeriesString(infos.toString());
        print('课程规则化${weekSeries}');
      } catch (e) {
        throw (courseName);
      }
//        print(startTime.toString() + ' - ' + timeCount.toString());

      // 获取上课教室
      String classRoom = testLocation;
//        print(classRoom);

      Course course = new Course(
          tableId, courseName, weekSeries, weekTime, startTime, timeCount, 1,
          classroom: classRoom,
          teacher: courseTeacher,
          testLocation: testLocation);
//        print(course.toMap().toString());

      rst.add(course);
      //     }
//      new Course(tableId, e.children[2].innerHtml, "[1,2,3,4,5,6,7]", 3, 5, 2, 0, '#8AD297', classroom: e.children[3].innerHtml)
    }
    CourseProvider courseProvider = new CourseProvider();
    for (Course course in rst) {
      await courseProvider.insert(course);
    }
    return rst;
  }

  Future<int> addCourseTable(String name, BuildContext context) async {
    CourseTableProvider courseTableProvider = new CourseTableProvider();
    CourseTable courseTable =
    await courseTableProvider.insert(new CourseTable(name));
    // 减1的原因：SQL中id从1开始计
    int id = courseTable.id - 1;
    MainStateModel.of(context).changeclassTable(id);
    return id;
  }

  String _getWeekSeriesString(String info) {
    String weekSeries;

    // x-x周 (单周|双周)
    var weeksResult = patten2.firstMatch(info);
    if (weeksResult != null) {
      int startWeek = int.parse(weeksResult.group(1));
      int endWeek = int.parse(weeksResult.group(2));
      if (info.contains('单周'))
        weekSeries = _getSingleWeekSeries(startWeek, endWeek);
      else if (info.contains('双周'))
        weekSeries = _getDoubleWeekSeries(startWeek, endWeek);
      else
        weekSeries = _getWeekSeries(startWeek, endWeek);
      return weekSeries;
    }

    // 从第x周开始：(单周|双周)
    var fromWeekResult = patten3.firstMatch(info);
    if (fromWeekResult != null) {
      int startWeek = int.parse(fromWeekResult.group(1));
      if (info.contains('单周'))
        weekSeries = _getSingleWeekSeries(startWeek, Constant.DEFAULT_WEEK_END);
      else if (info.contains('双周'))
        weekSeries = _getDoubleWeekSeries(startWeek, Constant.DEFAULT_WEEK_END);
      else
        weekSeries = _getWeekSeries(startWeek, Constant.DEFAULT_WEEK_END);
      return weekSeries;
    }

    // 第3周 第5周 7,8(周) 第9周
    List weekResult = patten4.allMatches(info).toList();
    print('单独${(weekResult[0].group(0).length - 3)~/2}');
    print('单独${weekResult[0].group(0).substring(0,weekResult[0].group(0).length - 3).split(',')}');
    if (!weekResult.isEmpty) {
      List<int> weekList = [];
      List weekListsingle = weekResult[0].group(0).substring(0,weekResult[0].group(0).length - 3).split(',');
      int sum = (weekResult[0].group(0).length - 3)~/2 ;
      for (var i = 0;i < sum; i++) {
        weekList.add(int.parse(weekListsingle[i]));
      }
      weekSeries = weekList.toString();
      return weekSeries;
    }

    // 有些课程只有单周/双周显示，无周数，故会出现找不到周数的情况
    // "周二 第3-4节 单周 逸B-101"
    if (info.contains('单周'))
      weekSeries = _getSingleWeekSeries(
          Constant.DEFAULT_WEEK_START, Constant.DEFAULT_WEEK_END);
    else if (info.contains('双周'))
      weekSeries = _getDoubleWeekSeries(
          Constant.DEFAULT_WEEK_START, Constant.DEFAULT_WEEK_END);
    else
      throw '课程周数解析失败';
    return weekSeries;
  }

  int _getIntWeek(String chinaWeek) {
    for (int i = 0; i < Constant.WEEK_WITH_BIAS.length; i++) {
      if (Constant.WEEK_WITH_BIAS[i] == chinaWeek) {
        return i;
      }
    }
    return 0;
  }

  String _getWeekSeries(int start, int end) {
    List<int> list = [for (int i = start; i <= end; i += 1) i];
    print (list.toString());
    return list.toString();
  }

  String _getSingleWeekSeries(int start, int end) {
    if (start % 2 == 0) start++;
    List<int> list = [for (int i = start; i <= end; i += 2) i];
    print (list.toString());
    return list.toString();
  }

  String _getDoubleWeekSeries(int start, int end) {
    if (start % 2 == 1) start++;
    List<int> list = [for (int i = start; i <= end; i += 2) i];
    print (list.toString());
    return list.toString();
  }
}