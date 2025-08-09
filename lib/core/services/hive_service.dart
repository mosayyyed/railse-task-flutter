import 'package:hive_flutter/hive_flutter.dart';
import 'package:task_manager_ui/data/models/task_model.dart';

class HiveService {
  static const String _taskBoxName = 'tasks';

  static Future<void> init() async {
    await Hive.initFlutter();

    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(TaskStatusAdapter());
    }
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(TaskPriorityAdapter());
    }
    if (!Hive.isAdapterRegistered(2)) {
      Hive.registerAdapter(TaskModelAdapter());
    }
  }

  static Future<Box<TaskModel>> openTaskBox() async {
    return await Hive.openBox<TaskModel>(_taskBoxName);
  }

  static Future<void> closeTaskBox() async {
    await Hive.box<TaskModel>(_taskBoxName).close();
  }

  static Future<void> clearAllData() async {
    await Hive.box<TaskModel>(_taskBoxName).clear();
  }

  static Future<void> closeAllBoxes() async {
    await Hive.close();
  }

  static int getTasksBoxSize() {
    return Hive.box<TaskModel>(_taskBoxName).length;
  }

  static bool isTaskBoxOpen() {
    return Hive.isBoxOpen(_taskBoxName);
  }
}
