import 'package:hive/hive.dart';
import 'package:task_manager_ui/data/models/task_model.dart';

class LocalStorageDataSource {
  final Box<TaskModel> _taskBox;

  LocalStorageDataSource(this._taskBox);

  Future<List<TaskModel>> getAllTasks() async {
    try {
      return _taskBox.values.toList();
    } catch (e) {
      throw Exception('Failed to load tasks: $e');
    }
  }

  Future<void> saveTasks(List<TaskModel> tasks) async {
    try {
      await _taskBox.clear();
      for (int i = 0; i < tasks.length; i++) {
        await _taskBox.put(tasks[i].taskId, tasks[i]);
      }
    } catch (e) {
      throw Exception('Failed to save tasks: $e');
    }
  }

  Future<void> clearTasks() async {
    try {
      await _taskBox.clear();
    } catch (e) {
      throw Exception('Failed to clear tasks: $e');
    }
  }

  Future<TaskModel?> getTaskById(String id) async {
    try {
      return _taskBox.get(id);
    } catch (e) {
      throw Exception('Failed to get task by id: $e');
    }
  }

  Future<void> addTask(TaskModel task) async {
    try {
      await _taskBox.put(task.taskId, task);
    } catch (e) {
      throw Exception('Failed to add task: $e');
    }
  }

  Future<void> updateTask(TaskModel updatedTask) async {
    try {
      if (_taskBox.containsKey(updatedTask.taskId)) {
        await _taskBox.put(updatedTask.taskId, updatedTask);
      } else {
        throw Exception('Task not found');
      }
    } catch (e) {
      throw Exception('Failed to update task: $e');
    }
  }

  Future<void> deleteTask(String taskId) async {
    try {
      await _taskBox.delete(taskId);
    } catch (e) {
      throw Exception('Failed to delete task: $e');
    }
  }

  // Additional Hive-specific methods for better performance

  int getTasksCount() {
    return _taskBox.length;
  }

  bool taskExists(String taskId) {
    return _taskBox.containsKey(taskId);
  }

  Future<List<TaskModel>> getTasksByStatus(TaskStatus status) async {
    try {
      return _taskBox.values.where((task) => task.status == status).toList();
    } catch (e) {
      throw Exception('Failed to get tasks by status: $e');
    }
  }

  Future<List<TaskModel>> getTasksByPriority(TaskPriority priority) async {
    try {
      return _taskBox.values
          .where((task) => task.priority == priority)
          .toList();
    } catch (e) {
      throw Exception('Failed to get tasks by priority: $e');
    }
  }

  Stream<BoxEvent> watchTasks() {
    return _taskBox.watch();
  }

  Stream<BoxEvent> watchTask(String taskId) {
    return _taskBox.watch(key: taskId);
  }
}
