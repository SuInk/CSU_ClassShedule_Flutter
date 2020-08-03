import '../../../generated/l10n.dart';
import 'package:flutter/material.dart';
import '../../../Models/CourseModel.dart';
import '../../../Resources/Config.dart';
import '../../../Utils/ColorUtil.dart';

class CourseWidget extends StatelessWidget {
  final Course course;
  final String color;
  final double height;
  final double width;
  final bool isActive;
  final bool setFlag;
  final onTap;
  final onLongPress;

  CourseWidget(
    this.course,
    this.color,
    this.height,
    this.width,
    this.isActive,
    this.setFlag,
    this.onTap,
    this.onLongPress,
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(
          top: (course.startTime - 1) * height,
          left: (course.weekTime - 1) * width),
      padding: EdgeInsets.all(1.2),
      height: (course.timeCount + 1) * height,
      width: width,
      child: Container(
        padding: EdgeInsets.all(0.8),
        decoration: BoxDecoration(
          color: HexColor(isActive ? color : Config.HIDE_CLASS_COLOR)
              .withOpacity(0.9),
          // TODO: Needs to be improved
          borderRadius: setFlag
              ? BorderRadius.only(
                  topLeft: Radius.circular(4),
                  bottomLeft: Radius.circular(4),
                  bottomRight: Radius.circular(4))
              : BorderRadius.all(Radius.circular(4)),
//          boxShadow: setFlag? [BoxShadow(color: HexColor(Config.HIDE_CLASS_COLOR), offset: Offset(2.0, 2.0))]:[]
        ),
        child: InkWell(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            highlightColor: Colors.black,
            onLongPress: onLongPress,
            onTap: onTap,
            child: new RichText(
              text: new TextSpan(
                style: new TextStyle(
                  fontSize: 10.2,
                  color: Colors.white,
                ),
                children: <TextSpan>[
                  new TextSpan(
                      text:
                          course.name,
                      style: new TextStyle(fontWeight: FontWeight.normal)),
                  new TextSpan(
                      text: S.of(context).at +
                          ((course.classroom.length > 1) ? (course.classroom) : S.of(context).unknown_place)),
                  new TextSpan(
                      text:
                      '\n\n' + course.teacher,
                      style: new TextStyle(
                          fontSize: 9.0,
                          fontWeight: FontWeight.normal)),
                ],
              ),
            )
//          Text(
//              (isActive ? '' : S.of(context).not_this_week) +
//                  course.name +
//                  S.of(context).at +
//                  (course.classroom ?? S.of(context).unknown_place),
//              style: TextStyle(color: Colors.white, fontSize: 12)),
            ),
      ),
    );
  }
}
