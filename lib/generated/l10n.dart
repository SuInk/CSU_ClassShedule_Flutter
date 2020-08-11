// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `中南课表`
  String get app_name {
    return Intl.message(
      '中南课表',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `(Flutter)`
  String get flutter_lts {
    return Intl.message(
      '(Flutter)',
      name: 'flutter_lts',
      desc: '',
      args: [],
    );
  }

  /// `@`
  String get at {
    return Intl.message(
      '@',
      name: 'at',
      desc: '',
      args: [],
    );
  }

  /// `-`
  String get to {
    return Intl.message(
      '-',
      name: 'to',
      desc: '',
      args: [],
    );
  }

  /// `月`
  String get month {
    return Intl.message(
      '月',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `第 {num} 周`
  String week(Object num) {
    return Intl.message(
      '第 $num 周',
      name: 'week',
      desc: '',
      args: [num],
    );
  }

  /// `第 {num} 节`
  String class_single(Object num) {
    return Intl.message(
      '第 $num 节',
      name: 'class_single',
      desc: '',
      args: [num],
    );
  }

  /// `第 {start} - {end} 节`
  String class_duration(Object start, Object end) {
    return Intl.message(
      '第 $start - $end 节',
      name: 'class_duration',
      desc: '',
      args: [start, end],
    );
  }

  /// `[非本周]`
  String get not_this_week {
    return Intl.message(
      '[非本周]',
      name: 'not_this_week',
      desc: '',
      args: [],
    );
  }

  /// `[未开学]`
  String get not_open {
    return Intl.message(
      '[未开学]',
      name: 'not_open',
      desc: '',
      args: [],
    );
  }

  /// `未知地点`
  String get unknown_place {
    return Intl.message(
      '未知地点',
      name: 'unknown_place',
      desc: '',
      args: [],
    );
  }

  /// `自动导入`
  String get import_auto {
    return Intl.message(
      '自动导入',
      name: 'import_auto',
      desc: '',
      args: [],
    );
  }

  /// `手动导入`
  String get import_manually {
    return Intl.message(
      '手动导入',
      name: 'import_manually',
      desc: '',
      args: [],
    );
  }

  /// `删除课程`
  String get delete_class_dialog_title {
    return Intl.message(
      '删除课程',
      name: 'delete_class_dialog_title',
      desc: '',
      args: [],
    );
  }

  /// `确定删除课程【 {className} 】吗？`
  String delete_class_dialog_content(Object className) {
    return Intl.message(
      '确定删除课程【 $className 】吗？',
      name: 'delete_class_dialog_content',
      desc: '',
      args: [className],
    );
  }

  /// `设置`
  String get settings_title {
    return Intl.message(
      '设置',
      name: 'settings_title',
      desc: '',
      args: [],
    );
  }

  /// `手动添加`
  String get import_manually_title {
    return Intl.message(
      '手动添加',
      name: 'import_manually_title',
      desc: '',
      args: [],
    );
  }

  /// `手动添加课程表数据`
  String get import_manually_subtitle {
    return Intl.message(
      '手动添加课程表数据',
      name: 'import_manually_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `导入中南大学课表`
  String get import_from_NJU_title {
    return Intl.message(
      '导入中南大学课表',
      name: 'import_from_NJU_title',
      desc: '',
      args: [],
    );
  }

  /// `登录中南大学教务系统导入课程表`
  String get import_from_NJU_subtitle {
    return Intl.message(
      '登录中南大学教务系统导入课程表',
      name: 'import_from_NJU_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `导入/导出课表`
  String get import_or_export_title {
    return Intl.message(
      '导入/导出课表',
      name: 'import_or_export_title',
      desc: '',
      args: [],
    );
  }

  /// `使用中南课表内置的导入/导出功能`
  String get import_or_export_subtitle {
    return Intl.message(
      '使用中南课表内置的导入/导出功能',
      name: 'import_or_export_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `课表管理`
  String get manage_table_title {
    return Intl.message(
      '课表管理',
      name: 'manage_table_title',
      desc: '',
      args: [],
    );
  }

  /// `添加或删除课表数据`
  String get manage_table_subtitle {
    return Intl.message(
      '添加或删除课表数据',
      name: 'manage_table_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `修改主题`
  String get change_theme_title {
    return Intl.message(
      '修改主题',
      name: 'change_theme_title',
      desc: '',
      args: [],
    );
  }

  /// `重置课程颜色`
  String get shuffle_color_pool_title {
    return Intl.message(
      '重置课程颜色',
      name: 'shuffle_color_pool_title',
      desc: '',
      args: [],
    );
  }

  /// `重置课程颜色池`
  String get shuffle_color_pool_subtitle {
    return Intl.message(
      '重置课程颜色池',
      name: 'shuffle_color_pool_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `修改当前周`
  String get change_week_title {
    return Intl.message(
      '修改当前周',
      name: 'change_week_title',
      desc: '',
      args: [],
    );
  }

  /// `当前周数：`
  String get change_week_subtitle {
    return Intl.message(
      '当前周数：',
      name: 'change_week_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `反馈`
  String get report_title {
    return Intl.message(
      '反馈',
      name: 'report_title',
      desc: '',
      args: [],
    );
  }

  /// `轻触直接反馈`
  String get report_subtitle {
    return Intl.message(
      '轻触直接反馈',
      name: 'report_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `投喂`
  String get donate_title {
    return Intl.message(
      '投喂',
      name: 'donate_title',
      desc: '',
      args: [],
    );
  }

  /// `给作者买支棒棒糖吧！`
  String get donate_subtitle {
    return Intl.message(
      '给作者买支棒棒糖吧！',
      name: 'donate_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `关于`
  String get about_title {
    return Intl.message(
      '关于',
      name: 'about_title',
      desc: '',
      args: [],
    );
  }

  /// `自定义选项`
  String get more_settings_title {
    return Intl.message(
      '自定义选项',
      name: 'more_settings_title',
      desc: '',
      args: [],
    );
  }

  /// `课表样式设置，高级设置与试验功能`
  String get more_settings_subtitle {
    return Intl.message(
      '课表样式设置，高级设置与试验功能',
      name: 'more_settings_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `白色标题模式`
  String get white_title_mode_title {
    return Intl.message(
      '白色标题模式',
      name: 'white_title_mode_title',
      desc: '',
      args: [],
    );
  }

  /// `如果背景图片是暗色的话`
  String get white_title_mode_subtitle {
    return Intl.message(
      '如果背景图片是暗色的话',
      name: 'white_title_mode_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `隐藏添加按钮`
  String get hide_add_button_title {
    return Intl.message(
      '隐藏添加按钮',
      name: 'hide_add_button_title',
      desc: '',
      args: [],
    );
  }

  /// `隐藏主界面右下角添加按钮`
  String get hide_add_button_subtitle {
    return Intl.message(
      '隐藏主界面右下角添加按钮',
      name: 'hide_add_button_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `显示月份`
  String get show_month_title {
    return Intl.message(
      '显示月份',
      name: 'show_month_title',
      desc: '',
      args: [],
    );
  }

  /// `在课表的左上角显示当前月份`
  String get show_month_subtitle {
    return Intl.message(
      '在课表的左上角显示当前月份',
      name: 'show_month_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `显示日期`
  String get show_date_title {
    return Intl.message(
      '显示日期',
      name: 'show_date_title',
      desc: '',
      args: [],
    );
  }

  /// `显示当前周的日期`
  String get show_date_subtitle {
    return Intl.message(
      '显示当前周的日期',
      name: 'show_date_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `显示周末`
  String get if_show_weekend_title {
    return Intl.message(
      '显示周末',
      name: 'if_show_weekend_title',
      desc: '',
      args: [],
    );
  }

  /// `设置是否显示周六周日`
  String get if_show_weekend_subtitle {
    return Intl.message(
      '设置是否显示周六周日',
      name: 'if_show_weekend_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `显示课程时间`
  String get if_show_classtime_title {
    return Intl.message(
      '显示课程时间',
      name: 'if_show_classtime_title',
      desc: '',
      args: [],
    );
  }

  /// `设置是否显示课程时间`
  String get if_show_classtime_subtitle {
    return Intl.message(
      '设置是否显示课程时间',
      name: 'if_show_classtime_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `强制缩放`
  String get force_zoom_title {
    return Intl.message(
      '强制缩放',
      name: 'force_zoom_title',
      desc: '',
      args: [],
    );
  }

  /// `强制缩放课程表为一页`
  String get force_zoom_subtitle {
    return Intl.message(
      '强制缩放课程表为一页',
      name: 'force_zoom_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `更换背景图片`
  String get add_backgound_picture_title {
    return Intl.message(
      '更换背景图片',
      name: 'add_backgound_picture_title',
      desc: '',
      args: [],
    );
  }

  /// `自定义背景图片`
  String get add_backgound_picture_subtitle {
    return Intl.message(
      '自定义背景图片',
      name: 'add_backgound_picture_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `清除背景图片`
  String get delete_backgound_picture_title {
    return Intl.message(
      '清除背景图片',
      name: 'delete_backgound_picture_title',
      desc: '',
      args: [],
    );
  }

  /// `恢复默认白色背景`
  String get delete_backgound_picture_subtitle {
    return Intl.message(
      '恢复默认白色背景',
      name: 'delete_backgound_picture_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `已恢复默认背景ww`
  String get delete_backgound_picture_success_toast {
    return Intl.message(
      '已恢复默认背景ww',
      name: 'delete_backgound_picture_success_toast',
      desc: '',
      args: [],
    );
  }

  /// `更换背景图片成功ww`
  String get add_backgound_picture_success_toast {
    return Intl.message(
      '更换背景图片成功ww',
      name: 'add_backgound_picture_success_toast',
      desc: '',
      args: [],
    );
  }

  /// `导出当前课表`
  String get export_classtable_title {
    return Intl.message(
      '导出当前课表',
      name: 'export_classtable_title',
      desc: '',
      args: [],
    );
  }

  /// `导出当前课表为二维码/链接\n使用公共服务 file.io`
  String get export_classtable_subtitle {
    return Intl.message(
      '导出当前课表为二维码/链接\n使用公共服务 file.io',
      name: 'export_classtable_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `导出中 请稍后`
  String get exporting_toast {
    return Intl.message(
      '导出中 请稍后',
      name: 'exporting_toast',
      desc: '',
      args: [],
    );
  }

  /// `二维码导入课表`
  String get import_from_qrcode_title {
    return Intl.message(
      '二维码导入课表',
      name: 'import_from_qrcode_title',
      desc: '',
      args: [],
    );
  }

  /// `从他人分享的二维码导入课表`
  String get import_from_qrcode_subtitle {
    return Intl.message(
      '从他人分享的二维码导入课表',
      name: 'import_from_qrcode_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `导入中 请稍后`
  String get importing_toast {
    return Intl.message(
      '导入中 请稍后',
      name: 'importing_toast',
      desc: '',
      args: [],
    );
  }

  /// `二维码无效，可能为链接过期`
  String get qrcode_url_error_toast {
    return Intl.message(
      '二维码无效，可能为链接过期',
      name: 'qrcode_url_error_toast',
      desc: '',
      args: [],
    );
  }

  /// `读取课表名称失败，可能为链接错误`
  String get qrcode_name_error_toast {
    return Intl.message(
      '读取课表名称失败，可能为链接错误',
      name: 'qrcode_name_error_toast',
      desc: '',
      args: [],
    );
  }

  /// `读取课程表失败，可能是 bug`
  String get qrcode_read_error_toast {
    return Intl.message(
      '读取课程表失败，可能是 bug',
      name: 'qrcode_read_error_toast',
      desc: '',
      args: [],
    );
  }

  /// `导入完成`
  String get import_success_toast {
    return Intl.message(
      '导入完成',
      name: 'import_success_toast',
      desc: '',
      args: [],
    );
  }

  /// `导出`
  String get export_title {
    return Intl.message(
      '导出',
      name: 'export_title',
      desc: '',
      args: [],
    );
  }

  /// `重置颜色池成功 >v<`
  String get shuffle_color_pool_success_toast {
    return Intl.message(
      '重置颜色池成功 >v<',
      name: 'shuffle_color_pool_success_toast',
      desc: '',
      args: [],
    );
  }

  /// `当前周未修改 >v<`
  String get nowweek_not_edited_success_toast {
    return Intl.message(
      '当前周未修改 >v<',
      name: 'nowweek_not_edited_success_toast',
      desc: '',
      args: [],
    );
  }

  /// `修改当前周成功 >v<`
  String get nowweek_edited_success_toast {
    return Intl.message(
      '修改当前周成功 >v<',
      name: 'nowweek_edited_success_toast',
      desc: '',
      args: [],
    );
  }

  /// `打开失败，可能是未安装 TIM/QQ`
  String get QQ_open_fail_toast {
    return Intl.message(
      '打开失败，可能是未安装 TIM/QQ',
      name: 'QQ_open_fail_toast',
      desc: '',
      args: [],
    );
  }

  /// `已复制QQ到剪贴板`
  String get QQ_copy_success_toast {
    return Intl.message(
      '已复制QQ到剪贴板',
      name: 'QQ_copy_success_toast',
      desc: '',
      args: [],
    );
  }

  /// `打开失败`
  String get pay_open_fail_toast {
    return Intl.message(
      '打开失败',
      name: 'pay_open_fail_toast',
      desc: '',
      args: [],
    );
  }

  /// `确认`
  String get ok {
    return Intl.message(
      '确认',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `取消`
  String get cancel {
    return Intl.message(
      '取消',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `添加课程`
  String get add_manually_title {
    return Intl.message(
      '添加课程',
      name: 'add_manually_title',
      desc: '',
      args: [],
    );
  }

  /// `课程名称`
  String get class_name {
    return Intl.message(
      '课程名称',
      name: 'class_name',
      desc: '',
      args: [],
    );
  }

  /// `请输入课程名称`
  String get class_name_empty {
    return Intl.message(
      '请输入课程名称',
      name: 'class_name_empty',
      desc: '',
      args: [],
    );
  }

  /// `上课老师`
  String get class_teacher {
    return Intl.message(
      '上课老师',
      name: 'class_teacher',
      desc: '',
      args: [],
    );
  }

  /// `上课地点`
  String get class_room {
    return Intl.message(
      '上课地点',
      name: 'class_room',
      desc: '',
      args: [],
    );
  }

  /// `选择上课时间`
  String get choose_class_time_dialog_title {
    return Intl.message(
      '选择上课时间',
      name: 'choose_class_time_dialog_title',
      desc: '',
      args: [],
    );
  }

  /// `课程节数不合法`
  String get class_num_invalid_dialog_title {
    return Intl.message(
      '课程节数不合法',
      name: 'class_num_invalid_dialog_title',
      desc: '',
      args: [],
    );
  }

  /// `课程结束节数应大于起始节数`
  String get class_num_invalid_dialog_content {
    return Intl.message(
      '课程结束节数应大于起始节数',
      name: 'class_num_invalid_dialog_content',
      desc: '',
      args: [],
    );
  }

  /// `课程周数不合法`
  String get week_num_invalid_dialog_title {
    return Intl.message(
      '课程周数不合法',
      name: 'week_num_invalid_dialog_title',
      desc: '',
      args: [],
    );
  }

  /// `课程结束周数应大于起始周数`
  String get week_num_invalid_dialog_content {
    return Intl.message(
      '课程结束周数应大于起始周数',
      name: 'week_num_invalid_dialog_content',
      desc: '',
      args: [],
    );
  }

  /// `添加课程`
  String get add_class {
    return Intl.message(
      '添加课程',
      name: 'add_class',
      desc: '',
      args: [],
    );
  }

  /// `添加成功！>v<`
  String get add_manually_success_toast {
    return Intl.message(
      '添加成功！>v<',
      name: 'add_manually_success_toast',
      desc: '',
      args: [],
    );
  }

  /// `导入课程表`
  String get import_title {
    return Intl.message(
      '导入课程表',
      name: 'import_title',
      desc: '',
      args: [],
    );
  }

  /// `用户名`
  String get username {
    return Intl.message(
      '用户名',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `密码`
  String get password {
    return Intl.message(
      '密码',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `验证码`
  String get captcha {
    return Intl.message(
      '验证码',
      name: 'captcha',
      desc: '',
      args: [],
    );
  }

  /// `点击刷新`
  String get tap_to_refresh {
    return Intl.message(
      '点击刷新',
      name: 'tap_to_refresh',
      desc: '',
      args: [],
    );
  }

  /// `记住密码`
  String get remember_password {
    return Intl.message(
      '记住密码',
      name: 'remember_password',
      desc: '',
      args: [],
    );
  }

  /// `导入`
  String get import {
    return Intl.message(
      '导入',
      name: 'import',
      desc: '',
      args: [],
    );
  }

  /// `密码错误 = =||`
  String get password_error_toast {
    return Intl.message(
      '密码错误 = =||',
      name: 'password_error_toast',
      desc: '',
      args: [],
    );
  }

  /// `验证码错误 > <`
  String get captcha_error_toast {
    return Intl.message(
      '验证码错误 > <',
      name: 'captcha_error_toast',
      desc: '',
      args: [],
    );
  }

  /// `用户名错误 TvT`
  String get username_error_toast {
    return Intl.message(
      '用户名错误 TvT',
      name: 'username_error_toast',
      desc: '',
      args: [],
    );
  }

  /// `课程解析失败 = =|| 可将课表反馈至作者`
  String get class_parse_error_toast {
    return Intl.message(
      '课程解析失败 = =|| 可将课表反馈至作者',
      name: 'class_parse_error_toast',
      desc: '',
      args: [],
    );
  }

  /// `数据存储成功 >v<`
  String get class_parse_toast_success {
    return Intl.message(
      '数据存储成功 >v<',
      name: 'class_parse_toast_success',
      desc: '',
      args: [],
    );
  }

  /// `出现异常，建议提交反馈`
  String get class_parse_toast_fail {
    return Intl.message(
      '出现异常，建议提交反馈',
      name: 'class_parse_toast_fail',
      desc: '',
      args: [],
    );
  }

  /// `周数矫正`
  String get fix_week_dialog_title {
    return Intl.message(
      '周数矫正',
      name: 'fix_week_dialog_title',
      desc: '',
      args: [],
    );
  }

  /// `检测到学期周数与当前不一致，是否立即矫正？`
  String get fix_week_dialog_content {
    return Intl.message(
      '检测到学期周数与当前不一致，是否立即矫正？',
      name: 'fix_week_dialog_content',
      desc: '',
      args: [],
    );
  }

  /// `矫正周数成功！OvO`
  String get fix_week_toast_success {
    return Intl.message(
      '矫正周数成功！OvO',
      name: 'fix_week_toast_success',
      desc: '',
      args: [],
    );
  }

  /// `课表管理`
  String get class_table_manage_title {
    return Intl.message(
      '课表管理',
      name: 'class_table_manage_title',
      desc: '',
      args: [],
    );
  }

  /// `请输入课程表名称`
  String get add_class_table_dialog_title {
    return Intl.message(
      '请输入课程表名称',
      name: 'add_class_table_dialog_title',
      desc: '',
      args: [],
    );
  }

  /// `添加课程表成功`
  String get add_class_table_success_toast {
    return Intl.message(
      '添加课程表成功',
      name: 'add_class_table_success_toast',
      desc: '',
      args: [],
    );
  }

  /// `确认删除`
  String get del_class_table_dialog_title {
    return Intl.message(
      '确认删除',
      name: 'del_class_table_dialog_title',
      desc: '',
      args: [],
    );
  }

  /// `此操作无法恢复，这将删除该课程表下的所有课程。`
  String get del_class_table_dialog_content {
    return Intl.message(
      '此操作无法恢复，这将删除该课程表下的所有课程。',
      name: 'del_class_table_dialog_content',
      desc: '',
      args: [],
    );
  }

  /// `删除课程表成功`
  String get del_class_table_success_toast {
    return Intl.message(
      '删除课程表成功',
      name: 'del_class_table_success_toast',
      desc: '',
      args: [],
    );
  }

  /// `检查更新`
  String get check_update_button {
    return Intl.message(
      '检查更新',
      name: 'check_update_button',
      desc: '',
      args: [],
    );
  }

  /// `已经是最新版本了呦～`
  String get already_newest_version_toast {
    return Intl.message(
      '已经是最新版本了呦～',
      name: 'already_newest_version_toast',
      desc: '',
      args: [],
    );
  }

  /// `GitHub 开源`
  String get github_open_source {
    return Intl.message(
      'GitHub 开源',
      name: 'github_open_source',
      desc: '',
      args: [],
    );
  }

  /// `开发者 rainskyke`
  String get developer {
    return Intl.message(
      '开发者 rainskyke',
      name: 'developer',
      desc: '',
      args: [],
    );
  }

  /// `博客：https://suink.cn\nEmail：leisurenot@outlook.com`
  String get introduction {
    return Intl.message(
      '博客：https://suink.cn\nEmail：leisurenot@outlook.com',
      name: 'introduction',
      desc: '',
      args: [],
    );
  }

  /// `所用到的开源项目(大部分)`
  String get open_source_library_title {
    return Intl.message(
      '所用到的开源项目(大部分)',
      name: 'open_source_library_title',
      desc: '',
      args: [],
    );
  }

  /// `南哪课表2.5.2：\n https://github.com/idealclover/NJU-Class-Shedule-Flutter\n\n感谢@idealclover及其朋友`
  String get open_source_library_content {
    return Intl.message(
      '南哪课表2.5.2：\n https://github.com/idealclover/NJU-Class-Shedule-Flutter\n\n感谢@idealclover及其朋友',
      name: 'open_source_library_content',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get easter_egg {
    return Intl.message(
      '',
      name: 'easter_egg',
      desc: '',
      args: [],
    );
  }

  /// `完美导入！投喂作者w`
  String get love_and_donate {
    return Intl.message(
      '完美导入！投喂作者w',
      name: 'love_and_donate',
      desc: '',
      args: [],
    );
  }

  /// `似乎有bug，我要反馈`
  String get bug_and_report {
    return Intl.message(
      '似乎有bug，我要反馈',
      name: 'bug_and_report',
      desc: '',
      args: [],
    );
  }

  /// `感谢制作，但我没钱`
  String get love_but_no_money {
    return Intl.message(
      '感谢制作，但我没钱',
      name: 'love_but_no_money',
      desc: '',
      args: [],
    );
  }

  /// `Hi！我是项目作者～\n\n看起来你已经导入我南教务处成功啦！撒花撒花！\n\n建议大家还是和自己教务系统中的课表对一下～避免出现什么bug～如果有bug的话欢迎反馈给我！设置-反馈中有我的的QQ号～\n\n放心，这个弹框每次导入只会弹出一次，所以不会影响你的正常使用。`
  String get welcome_content {
    return Intl.message(
      'Hi！我是项目作者～\n\n看起来你已经导入我南教务处成功啦！撒花撒花！\n\n建议大家还是和自己教务系统中的课表对一下～避免出现什么bug～如果有bug的话欢迎反馈给我！设置-反馈中有我的的QQ号～\n\n放心，这个弹框每次导入只会弹出一次，所以不会影响你的正常使用。',
      name: 'welcome_content',
      desc: '',
      args: [],
    );
  }

  /// `欢迎使用中南课表！`
  String get welcome_title {
    return Intl.message(
      '欢迎使用中南课表！',
      name: 'welcome_title',
      desc: '',
      args: [],
    );
  }

  /// `修改当前周数请前往设置ww`
  String get go_to_settings_toast {
    return Intl.message(
      '修改当前周数请前往设置ww',
      name: 'go_to_settings_toast',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}