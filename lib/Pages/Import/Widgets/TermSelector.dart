import '../../../generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Resources/Constant.dart';
import '../../../Resources/Config.dart';
import '../../../Components/Dialog.dart';

class NodeDialog extends StatefulWidget {
  NodeDialog() : super();

  @override
  _NodeDialogState createState() => _NodeDialogState();
}

class _NodeDialogState extends State<NodeDialog> {
  Map _node = {
    'weekTime': 0,
    'termNum': '',
    'startTime': 0,
    'endTime': 0,
    'classroom': '',
    'startWeek': 0,
    'endWeek': Config.MAX_WEEKS - 1,
    'weekType': Constant.FULL_WEEKS
  };

  @override
  Widget build(BuildContext context) {
    return mDialog(
      S.of(context).choose_class_time_dialog_title,
      Container(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            Padding(padding: EdgeInsets.all(8.0)),

            Padding(padding: EdgeInsets.all(8.0)),
            Container(
              height: 32,
              child: Flex(
                  mainAxisSize: MainAxisSize.min,
                  direction: Axis.horizontal,
                  children: <Widget>[

                    Flexible(
                      flex: 2,
                      child: CupertinoPicker(
                          scrollController: new FixedExtentScrollController(
                            initialItem: _node['startWeek'],
                          ),
                          itemExtent: 32.0,
                          backgroundColor: Colors.white,
                          onSelectedItemChanged: (int index) {
                            setState(() {
                              _node['termNum'] = index;
                              print('学期${_node['termNum']}');
                            });
                          },
                          children: new List<Widget>.generate(12,
                                  (int index) {
                                return new Center(
                                  child: new Text(
                                    Constant.TERM_LIST[index + 1],
                                    style: TextStyle(fontSize: 18),
                                  ),
                                );
                              })),
                    ),


                  ]),
            ),
          ],
        ),
      ),
      <Widget>[
        FlatButton(
          child: Text(S.of(context).ok),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}