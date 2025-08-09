import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager_ui/data/models/task_model.dart';

class LocalStorageDataSource {
  final SharedPreferences _prefs;
  static const String _tasksKey = 'tasks';

  LocalStorageDataSource(this._prefs);

  Future<List<TaskModel>> getAllTasks() async {
    try {
      final tasksJson = _prefs.getString(_tasksKey);
      if (tasksJson == null) return [];

      final List<dynamic> tasksList = json.decode(tasksJson);
      return tasksList.map((json) => TaskModel.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load tasks: $e');
    }
  }

  Future<void> saveTasks(List<TaskModel> tasks) async {
    try {
      final tasksJson = json.encode(
        tasks.map((task) => task.toJson()).toList(),
      );
      await _prefs.setString(_tasksKey, tasksJson);
    } catch (e) {
      throw Exception('Failed to save tasks: $e');
    }
  }

  Future<void> clearTasks() async {
    try {
      await _prefs.remove(_tasksKey);
    } catch (e) {
      throw Exception('Failed to clear tasks: $e');
    }
  }

  Future<TaskModel?> getTaskById(String id) async {
    try {
      final tasks = await getAllTasks();
      for (final task in tasks) {
        if (task.taskId == id) {
          return task;
        }
      }
      return null;
    } catch (e) {
      throw Exception('Failed to get task by id: $e');
    }
  }

  Future<void> addTask(TaskModel task) async {
    try {
      final tasks = await getAllTasks();
      tasks.add(task);
      await saveTasks(tasks);
    } catch (e) {
      throw Exception('Failed to add task: $e');
    }
  }

  Future<void> updateTask(TaskModel updatedTask) async {
    try {
      final tasks = await getAllTasks();
      final index = tasks.indexWhere(
        (task) => task.taskId == updatedTask.taskId,
      );
      if (index != -1) {
        tasks[index] = updatedTask;
        await saveTasks(tasks);
      } else {
        throw Exception('Task not found');
      }
    } catch (e) {
      throw Exception('Failed to update task: $e');
    }
  }

  Future<void> deleteTask(String taskId) async {
    try {
      final tasks = await getAllTasks();
      tasks.removeWhere((task) => task.taskId == taskId);
      await saveTasks(tasks);
    } catch (e) {
      throw Exception('Failed to delete task: $e');
    }
  }
}
