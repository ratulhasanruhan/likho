import 'dart:ui';

import 'package:get/get.dart';

enum TaskStatus {
  pending,
  onGoing,
  completed,
  canceled,
}

extension TaskStatusExtension on TaskStatus {
  String get name {
    switch (this) {
      case TaskStatus.pending:
        return 'pending'.tr;
      case TaskStatus.onGoing:
        return 'on_going'.tr;
      case TaskStatus.completed:
        return 'completed'.tr;
      case TaskStatus.canceled:
        return 'canceled'.tr;
      default:
        return 'on_going'.tr;
    }
  }

  Color get color {
    switch (this) {
      case TaskStatus.pending:
        return Color(0xFF8F99EB);
      case TaskStatus.onGoing:
        return Color(0xFF67EF8D);
      case TaskStatus.completed:
        return Color(0xFF46C7FE);
      case TaskStatus.canceled:
        return Color(0xFFE88B8C);
      default:
        return Color(0xFF8F99EB);
    }
  }

  static TaskStatus fromName(String name) {
    switch (name) {
      case 'Pending' || 'পেন্ডিং' :
        return TaskStatus.pending;
      case 'On Going' || 'চলমান':
        return TaskStatus.onGoing;
      case 'Completed' || 'সম্পন্ন':
        return TaskStatus.completed;
      case 'Canceled' || 'বাতিল':
        return TaskStatus.canceled;
      default:
        return TaskStatus.onGoing;
    }
  }

}