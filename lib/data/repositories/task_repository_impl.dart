import 'package:task_manager_ui/data/datasources/local_storage_datasource.dart';
import 'package:task_manager_ui/data/models/task_model.dart';
import 'package:task_manager_ui/data/repositories/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  final LocalStorageDataSource _localDataSource;

  TaskRepositoryImpl(this._localDataSource);

  @override
  Future<List<TaskModel>> getAllTasks() async {
    try {
      return await _localDataSource.getAllTasks();
    } catch (e) {
      throw Exception('Repository: Failed to get all tasks - $e');
    }
  }

  @override
  Future<TaskModel?> getTaskById(String id) async {
    try {
      return await _localDataSource.getTaskById(id);
    } catch (e) {
      throw Exception('Repository: Failed to get task by id - $e');
    }
  }

  @override
  Future<void> addTask(TaskModel task) async {
    try {
      await _localDataSource.addTask(task);
    } catch (e) {
      throw Exception('Repository: Failed to add task - $e');
    }
  }

  @override
  Future<void> updateTask(TaskModel task) async {
    try {
      await _localDataSource.updateTask(task);
    } catch (e) {
      throw Exception('Repository: Failed to update task - $e');
    }
  }

  @override
  Future<void> deleteTask(String taskId) async {
    try {
      await _localDataSource.deleteTask(taskId);
    } catch (e) {
      throw Exception('Repository: Failed to delete task - $e');
    }
  }

  @override
  Future<void> clearAllTasks() async {
    try {
      await _localDataSource.clearTasks();
    } catch (e) {
      throw Exception('Repository: Failed to clear all tasks - $e');
    }
  }

  @override
  Future<List<TaskModel>> getTasksByStatus(TaskStatus status) async {
    try {
      final tasks = await _localDataSource.getAllTasks();
      return tasks.where((task) => task.status == status).toList();
    } catch (e) {
      throw Exception('Repository: Failed to get tasks by status - $e');
    }
  }

  @override
  Future<List<TaskModel>> getTasksByPriority(TaskPriority priority) async {
    try {
      final tasks = await _localDataSource.getAllTasks();
      return tasks.where((task) => task.priority == priority).toList();
    } catch (e) {
      throw Exception('Repository: Failed to get tasks by priority - $e');
    }
  }

  @override
  Future<List<TaskModel>> searchTasks(String query) async {
    try {
      final tasks = await _localDataSource.getAllTasks();
      return tasks
          .where(
            (task) =>
                task.title.toLowerCase().contains(query.toLowerCase()) ||
                task.description.toLowerCase().contains(query.toLowerCase()) ||
                task.assignedTo.toLowerCase().contains(query.toLowerCase()),
          )
          .toList();
    } catch (e) {
      throw Exception('Repository: Failed to search tasks - $e');
    }
  }
}
