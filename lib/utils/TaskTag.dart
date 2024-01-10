import 'dart:ui';

import 'package:get/get.dart';

enum TaskTag {
  office,
  home,
  personal,
  urgent,
  work,
  other,
}

extension TaskTagExtension on TaskTag {
  String get name {
    switch (this) {
      case TaskTag.office:
        return 'office'.tr;
      case TaskTag.home:
        return 'home'.tr;
      case TaskTag.personal:
        return 'personal'.tr;
      case TaskTag.urgent:
        return 'urgent'.tr;
      case TaskTag.work:
        return 'work'.tr;
      case TaskTag.other:
        return 'other'.tr;
      default:
        return '';
    }
  }

  Color get color {
    switch (this) {
      case TaskTag.office:
        return Color(0xFF8F81FE);
      case TaskTag.home:
        return Color(0xFFF0A58E);
      case TaskTag.personal:
        return Color(0xFFE88B8C);
      case TaskTag.urgent:
        return Color(0xFFF57C96);
      case TaskTag.work:
        return Color(0xFF1EC1C3);
      case TaskTag.other:
        return Color(0xFF8F99EB);
      default:
        return Color(0xFF8F99EB);
    }
  }

  static TaskTag fromName(String name) {
    switch (name) {
      case 'Office' || 'অফিস':
        return TaskTag.office;
      case 'Home' || 'বাড়ি':
        return TaskTag.home;
      case 'Personal' || 'ব্যক্তিগত':
        return TaskTag.personal;
      case 'Urgent' || 'জরুরী':
        return TaskTag.urgent;
      case 'Work' || 'কাজ':
        return TaskTag.work;
      case 'Other' || 'অন্যান্য' :
        return TaskTag.other;
      default:
        return TaskTag.other;
    }
  }

}