import 'package:task_todo_app/app/data/models/task.dart';

class TaskRepository {
  //TaskProvider taskProvider;
  final taskProvider;
  TaskRepository({required this.taskProvider});

  List<Task> readTasks() => taskProvider.readTasks();
  void writeTasks(List<Task> tasks) => taskProvider.writeTasks(tasks);
}
