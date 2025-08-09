import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_ui/data/models/task_model.dart';

part 'task_state.freezed.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.initial() = TaskInitial;

  const factory TaskState.loading() = TaskLoading;

  const factory TaskState.loaded(List<TaskModel> tasks) = TaskLoaded;

  const factory TaskState.error(String message) = TaskError;

  const factory TaskState.added(TaskModel task) = TaskAdded;

  const factory TaskState.updated(TaskModel task) = TaskUpdated;

  const factory TaskState.deleted(String taskId) = TaskDeleted;
}
