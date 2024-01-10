import 'package:flutter/material.dart';
import 'package:likho/utils/TaskStatus.dart';
import 'package:likho/utils/TaskTag.dart';

import '../model/TaskModel.dart';

List<TaskModel> demoTask = [
  TaskModel(
      title: 'Design Meeting',
      status: TaskStatus.pending,
      tags: [
        TaskTag.office,
        TaskTag.urgent,
     ],
      timeRange: DateTimeRange(
        start: DateTime.now().subtract(const Duration(hours: 1)),
        end: DateTime.now().add(const Duration(hours: 2)),
      ),
      createdAt: DateTime.now().subtract(const Duration(hours: 3)),
  ),

  TaskModel(
      title: 'Design Meeting',
      status: TaskStatus.pending,
      tags: [
        TaskTag.office,
        TaskTag.urgent,
     ],
      timeRange: DateTimeRange(
        start: DateTime.now().subtract(const Duration(hours: 1)),
        end: DateTime.now().add(const Duration(hours: 2)),
      ),
      createdAt: DateTime.now().subtract(const Duration(hours: 3)),
  ),

  TaskModel(
      title: 'Design Meeting',
      status: TaskStatus.pending,
      tags: [
        TaskTag.office,
        TaskTag.urgent,
     ],
      timeRange: DateTimeRange(
        start: DateTime.now().subtract(const Duration(hours: 1)),
        end: DateTime.now().add(const Duration(hours: 2)),
      ),
      createdAt: DateTime.now().subtract(const Duration(hours: 3)),
  ),

  TaskModel(
      title: 'Design Meeting',
      status: TaskStatus.pending,
      tags: [
        TaskTag.office,
        TaskTag.urgent,
     ],
      timeRange: DateTimeRange(
        start: DateTime.now().subtract(const Duration(hours: 1)),
        end: DateTime.now().add(const Duration(hours: 2)),
      ),
      createdAt: DateTime.now().subtract(const Duration(hours: 3)),
  ),

];