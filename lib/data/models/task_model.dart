import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task_model.g.dart';

@HiveType(typeId: 0)
enum TaskStatus {
  @HiveField(0)
  @JsonValue('not_started')
  notStarted,
  @HiveField(1)
  @JsonValue('started')
  started,
  @HiveField(2)
  @JsonValue('completed')
  completed,
}

@HiveType(typeId: 1)
enum TaskPriority {
  @HiveField(0)
  @JsonValue('low')
  low,
  @HiveField(1)
  @JsonValue('medium')
  medium,
  @HiveField(2)
  @JsonValue('high')
  high,
}

@HiveType(typeId: 2)
@JsonSerializable()
class TaskModel extends HiveObject {
  @HiveField(0)
  final String taskId;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String description;

  @HiveField(3)
  final String assignedTo;

  @HiveField(4)
  final DateTime createdDate;

  @HiveField(5)
  final DateTime startDate;

  @HiveField(6)
  final DateTime? dueDate;

  @HiveField(7)
  final DateTime? actualEndDate;

  @HiveField(8)
  final TaskStatus status;

  @HiveField(9)
  final TaskPriority priority;

  TaskModel({
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
}
