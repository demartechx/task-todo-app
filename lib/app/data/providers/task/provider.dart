import 'dart:convert';

import 'package:get/get.dart';
import 'package:task_todo_app/app/core/utils/keys.dart';
import 'package:task_todo_app/app/data/models/task.dart';
import 'package:task_todo_app/app/data/services/storage/services.dart';

class TaskProvier {
  final _storage = Get.find<StorageService>();

  List<Task> readTasks() {
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKey).toString())
        .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTasks(List<Task> tasks) {
    _storage.write(taskKey, jsonEncode(tasks));
  }
}
