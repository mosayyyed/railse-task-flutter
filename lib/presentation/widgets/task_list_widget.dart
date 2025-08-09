import 'package:flutter/material.dart';
import 'package:task_manager_ui/data/models/task_model.dart';
import 'package:task_manager_ui/presentation/widgets/task_item_widget.dart';

class TaskListWidget extends StatelessWidget {
  final List<TaskModel> tasks;

  const TaskListWidget({super.key, required this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 80.0),
      itemCount: tasks.length,
      separatorBuilder: (context, index) => const Divider(height: 1.0),
      itemBuilder: (context, index) =>
          TaskItemWidget(task: tasks[index], index: index),
    );
  }
}
