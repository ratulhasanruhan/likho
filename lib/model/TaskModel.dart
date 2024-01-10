// To parse this JSON data, do
//
//     final taskModel = taskModelFromJson(jsonString);

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:likho/utils/TaskStatus.dart';
import 'package:likho/utils/TaskTag.dart';

TaskModel taskModelFromJson(String str) => TaskModel.fromJson(json.decode(str));

String taskModelToJson(TaskModel data) => json.encode(data.toJson());

class TaskModel {
  String title;
  TaskStatus status;
  List<TaskTag> tags;
  DateTimeRange timeRange;
  DateTime createdAt;

  TaskModel({
    required this.title,
    required this.status,
    required this.tags,
    required this.timeRange,
    required this.createdAt,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) => TaskModel(
    title: json["title"],
    status: TaskStatusExtension.fromName(json["status"]),
    tags: List<TaskTag>.from(json["tags"].map((x) => TaskTagExtension.fromName(x))),
    timeRange: json["time_range"],
    createdAt: json["created_at"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "status": status.name,
    "tags": List<TaskTag>.from(tags.map((x) => x.name)),
    "time_range": timeRange,
    "created_at": createdAt,
  };
}
