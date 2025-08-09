import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager_ui/data/models/task_model.dart';
import 'package:task_manager_ui/data/repositories/task_repository.dart';
import 'package:task_manager_ui/presentation/cubits/task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  final TaskRepository _repository;

  TaskCubit(this._repository) : super(TaskInitial());

  List<TaskModel> _sortTasks(List<TaskModel> tasks) {
    final tasksCopy = List<TaskModel>.from(tasks);

    tasksCopy.sort((a, b) {
      final aStatusPriority = _getStatusPriority(a.status);
      final bStatusPriority = _getStatusPriority(b.status);

      if (aStatusPriority != bStatusPriority) {
        return aStatusPriority.compareTo(bStatusPriority);
      }

      if (a.priority != b.priority) {
        return _getPriorityValue(
          b.priority,
        ).compareTo(_getPriorityValue(a.priority));
      }

      return b.createdDate.compareTo(a.createdDate);
    });

    return tasksCopy;
  }

  int _getStatusPriority(TaskStatus status) {
    switch (status) {
      case TaskStatus.started:
        return 1;
      case TaskStatus.notStarted:
        return 2;
      case TaskStatus.completed:
        return 3;
    }
  }

  int _getPriorityValue(TaskPriority priority) {
    switch (priority) {
      case TaskPriority.high:
        return 3;
      case TaskPriority.medium:
        return 2;
      case TaskPriority.low:
        return 1;
    }
  }

  String _generateTaskId() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }

  bool _validateTask(TaskModel task) {
    return task.title.trim().isNotEmpty &&
        task.description.trim().isNotEmpty &&
        task.assignedTo.trim().isNotEmpty;
  }

  Future<void> loadTasks() async {
    try {
      emit(TaskLoading());
      final tasks = await _repository.getAllTasks();
      final sortedTasks = _sortTasks(tasks);
      emit(TaskLoaded(sortedTasks));
    } catch (e) {
      emit(TaskError('Failed to load tasks: ${e.toString()}'));
    }
  }

  Future<void> addTask({
    required String title,
    required String description,
    required String assignedTo,
    required TaskPriority priority,
    DateTime? dueDate,
  }) async {
    try {
      final taskId = _generateTaskId();
      final now = DateTime.now();

      final task = TaskModel(
        taskId: taskId,
        title: title.trim(),
        description: description.trim(),
        assignedTo: assignedTo.trim(),
        createdDate: now,
        startDate: now,
        dueDate: dueDate,
        status: TaskStatus.notStarted,
        priority: priority,
      );

      if (!_validateTask(task)) {
        emit(const TaskError('Invalid task data. Please check all fields.'));
        return;
      }

      await _repository.addTask(task);
      emit(TaskAdded(task));
      await loadTasks();
    } catch (e) {
      emit(TaskError('Failed to add task: ${e.toString()}'));
    }
  }

  Future<void> updateTask(TaskModel updatedTask) async {
    try {
      if (!_validateTask(updatedTask)) {
        emit(const TaskError('Invalid task data. Please check all fields.'));
        return;
      }

      await _repository.updateTask(updatedTask);
      emit(TaskUpdated(updatedTask));
      await loadTasks();
    } catch (e) {
      emit(TaskError('Failed to update task: ${e.toString()}'));
    }
  }

  Future<void> deleteTask(String taskId) async {
    try {
      await _repository.deleteTask(taskId);
      emit(TaskDeleted(taskId));
      await loadTasks();
    } catch (e) {
      emit(TaskError('Failed to delete task: ${e.toString()}'));
    }
  }

  Future<void> startTask(String taskId) async {
    try {
      final task = await _repository.getTaskById(taskId);
      if (task == null) {
        emit(const TaskError('Task not found'));
        return;
      }

      if (task.status != TaskStatus.notStarted) {
        emit(const TaskError('Task cannot be started from current status'));
        return;
      }

      final updatedTask = task.copyWith(
        status: TaskStatus.started,
        startDate: DateTime.now(),
      );

      await _repository.updateTask(updatedTask);
      emit(TaskUpdated(updatedTask));
      await loadTasks();
    } catch (e) {
      emit(TaskError('Failed to start task: ${e.toString()}'));
    }
  }

  Future<void> completeTask(String taskId) async {
    try {
      final task = await _repository.getTaskById(taskId);
      if (task == null) {
        emit(const TaskError('Task not found'));
        return;
      }

      if (task.status != TaskStatus.started) {
        emit(const TaskError('Task must be started before completion'));
        return;
      }

      final updatedTask = task.copyWith(
        status: TaskStatus.completed,
        actualEndDate: DateTime.now(),
      );

      await _repository.updateTask(updatedTask);
      emit(TaskUpdated(updatedTask));
      await loadTasks();
    } catch (e) {
      emit(TaskError('Failed to complete task: ${e.toString()}'));
    }
  }

  Future<void> searchTasks(String query) async {
    try {
      emit(TaskLoading());
      List<TaskModel> tasks;

      if (query.trim().isEmpty) {
        tasks = await _repository.getAllTasks();
      } else {
        tasks = await _repository.searchTasks(query.trim());
      }

      final sortedTasks = _sortTasks(tasks);
      emit(TaskLoaded(sortedTasks));
    } catch (e) {
      emit(TaskError('Failed to search tasks: ${e.toString()}'));
    }
  }

  Future<void> clearAllTasks() async {
    try {
      await _repository.clearAllTasks();
      emit(const TaskLoaded([]));
    } catch (e) {
      emit(TaskError('Failed to clear tasks: ${e.toString()}'));
    }
  }
}
