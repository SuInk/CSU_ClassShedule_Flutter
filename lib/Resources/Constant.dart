import 'Config.dart';

class Constant {
  static final List<String> WEEK_WITH_BIAS = [
    "",
    "周一",
    "周二",
    "周三",
    "周四",
    "周五",
    "周六",
    "周日"
  ];
  static final List<String> TERM_LIST = [
    "选择学期，默认为当前学期",
    "2019-2020-1",
    "2019-2020-2",
    "2020-2021-1",
    "2020-2021-2",
    "2021-2022-1",
    "2021-2022-2",
    "2022-2023-1",
    "2022-2023-2",
    "2023-2024-1",
    "2023-2024-2",
    "2024-2025-1",
    "2024-2025-2"
  ];
  static final List<String> WEEK_WITHOUT_BIAS = [
    "周一",
    "周二",
    "周三",
    "周四",
    "周五",
    "周六",
    "周日"
  ];
  static final List<String> WEEK_WITHOUT_BIAS_WITHOUT_PRE = [
    "一",
    "二",
    "三",
    "四",
    "五",
    "六",
    "日"
  ];

  static final List<String> CLASS_TIME = [
    "08:00\n08:45",
    "08:55\n09:40",
    "10:00\n10:45",
    "10:55\n11:40",
    "14:00\n14:45",
    "14:55\n15:40",
    "16:00\n16:45",
    "16:55\n17:40",
    "19:00\n19:45",
    "19:55\n20:40",
    "20:55\n21:40",
    "21:55\n22:40",
    "23:00"
  ];

  static final int LOGIN_CORRECT = 0;
  static final int PASSWORD_ERROR = 1;
  static final int CAPTCHA_ERROR = 2;
  static final int USERNAME_ERROR = 3;

  static final int ADD_MANUALLY = 0;
  static final int ADD_BY_IMPORT = 1;

  static final int DEFAULT_WEEK_START = 1;
  static final int DEFAULT_WEEK_END = Config.DEFAULT_WEEK_NUM;
  static final int DEFAULT_WEEK_NUM = Config.DEFAULT_WEEK_NUM;

  static final int FULL_WEEKS = 0;
  static final int SINGLE_WEEKS = 1;
  static final int DOUBLE_WEEKS = 2;
  static final int DEFINED_WEEKS = 3;

  //TODO: add 自定义
  static final List<String> WEEK_TYPES = ['全部', '单周', '双周'];
}
