import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task_model.g.dart';

enum TaskStatus {
  @JsonValue('not_started')
  notStarted,
  @JsonValue('started')
  started,
  @JsonValue('completed')
  completed,
}

enum TaskPriority {
  @JsonValue('low')
  low,
  @JsonValue('medium')
  medium,
  @JsonValue('high')
  high,
}

@JsonSerializable()
class TaskModel extends Equatable {
  final String taskId;
  final String title;
  final String description;
  final String assignedTo;
  final DateTime createdDate;
  final DateTime startDate;
  final DateTime? dueDate;
  final DateTime? actualEndDate;
  final TaskStatus status;
  final TaskPriority priority;

  const TaskModel({
    required this.taskId,
    required this.title,
    required this.description,
    required this.assignedTo,
    required this.createdDate,
    required this.startDate,
    this.dueDate,
    this.actualEndDate,
    this.status = TaskStatus.notStarted,
    this.priority = TaskPriority.medium,
  });

  // JSON serialization methods
  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
  Map<String, dynamic> toJson() => _$TaskModelToJson(this);

  // Copy with method for updating tasks
  TaskModel copyWith({
    String? taskId,
    String? title,
    String? description,
    String? assignedTo,
    DateTime? createdDate,
    DateTime? startDate,
    DateTime? dueDate,
    DateTime? actualEndDate,
    TaskStatus? status,
    TaskPriority? priority,
  }) {
    return TaskModel(
      taskId: taskId ?? this.taskId,
      title: title ?? this.title,
      description: description ?? this.description,
      assignedTo: assignedTo ?? this.assignedTo,
      createdDate: createdDate ?? this.createdDate,
      startDate: startDate ?? this.startDate,
      dueDate: dueDate ?? this.dueDate,
      actualEndDate: actualEndDate ?? this.actualEndDate,
      status: status ?? this.status,
      priority: priority ?? this.priority,
    );
  }

  @override
  List<Object?> get props => [
    taskId,
    title,
    description,
    assignedTo,
    createdDate,
    startDate,
    dueDate,
    actualEndDate,
    status,
    priority,
  ];
}
