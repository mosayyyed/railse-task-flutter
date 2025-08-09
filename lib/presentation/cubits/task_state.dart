import 'package:equatable/equatable.dart';
import 'package:task_manager_ui/data/models/task_model.dart';

abstract class TaskState extends Equatable {
  const TaskState();

  @override
  List<Object?> get props => [];
}

class TaskInitial extends TaskState {}

class TaskLoading extends TaskState {}

class TaskLoaded extends TaskState {
  final List<TaskModel> tasks;

  const TaskLoaded(this.tasks);

  @override
  List<Object?> get props => [tasks];
}

class TaskError extends TaskState {
  final String message;

  const TaskError(this.message);

  @override
  List<Object?> get props => [message];
}

class TaskAdded extends TaskState {
  final TaskModel task;

  const TaskAdded(this.task);

  @override
  List<Object?> get props => [task];
}

class TaskUpdated extends TaskState {
  final TaskModel task;

  const TaskUpdated(this.task);

  @override
  List<Object?> get props => [task];
}

class TaskDeleted extends TaskState {
  final String taskId;

  const TaskDeleted(this.taskId);

  @override
  List<Object?> get props => [taskId];
}
