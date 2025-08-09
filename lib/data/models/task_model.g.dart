// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) => TaskModel(
  taskId: json['taskId'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  assignedTo: json['assignedTo'] as String,
  createdDate: DateTime.parse(json['createdDate'] as String),
  startDate: DateTime.parse(json['startDate'] as String),
  dueDate: json['dueDate'] == null
      ? null
      : DateTime.parse(json['dueDate'] as String),
  actualEndDate: json['actualEndDate'] == null
      ? null
      : DateTime.parse(json['actualEndDate'] as String),
  status: $enumDecode(_$TaskStatusEnumMap, json['status']),
  priority: $enumDecode(_$TaskPriorityEnumMap, json['priority']),
);

Map<String, dynamic> _$TaskModelToJson(TaskModel instance) => <String, dynamic>{
  'taskId': instance.taskId,
  'title': instance.title,
  'description': instance.description,
  'assignedTo': instance.assignedTo,
  'createdDate': instance.createdDate.toIso8601String(),
  'startDate': instance.startDate.toIso8601String(),
  'dueDate': instance.dueDate?.toIso8601String(),
  'actualEndDate': instance.actualEndDate?.toIso8601String(),
  'status': _$TaskStatusEnumMap[instance.status]!,
  'priority': _$TaskPriorityEnumMap[instance.priority]!,
};

const _$TaskStatusEnumMap = {
  TaskStatus.notStarted: 'not_started',
  TaskStatus.started: 'started',
  TaskStatus.completed: 'completed',
};

const _$TaskPriorityEnumMap = {
  TaskPriority.low: 'low',
  TaskPriority.medium: 'medium',
  TaskPriority.high: 'high',
};

K $enumDecode<K, V>(Map<K, V> enumValues, Object? source, {K? unknownValue}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries
      .singleWhere(
        (e) => e.value == source,
        orElse: () {
          if (unknownValue == null) {
            throw ArgumentError(
              '`$source` is not one of the supported values: '
              '${enumValues.values.join(', ')}',
            );
          }
          return MapEntry(unknownValue, enumValues.values.first);
        },
      )
      .key;
}
