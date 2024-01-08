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
      case 'office':
        return TaskTag.office;
      case 'home':
        return TaskTag.home;
      case 'personal':
        return TaskTag.personal;
      case 'urgent':
        return TaskTag.urgent;
      case 'work':
        return TaskTag.work;
      case 'other':
        return TaskTag.other;
      default:
        return TaskTag.other;
    }
  }

}