enum TaskStatus { notStarted, started, completed }

enum TaskPriority { low, medium, high }

class TaskModel {
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
    this.priority = TaskPriority.low,
  });
}
