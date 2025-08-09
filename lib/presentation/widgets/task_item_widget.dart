import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager_ui/data/models/task_model.dart';
import 'package:task_manager_ui/presentation/cubits/task_cubit.dart';
import 'package:task_manager_ui/presentation/widgets/edit_task_dialog.dart';

class TaskItemWidget extends StatelessWidget {
  final TaskModel task;
  final int index;

  const TaskItemWidget({super.key, required this.task, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        border: BoxBorder.fromLTRB(
          left: BorderSide(color: _getStatusColor(task.status), width: 5.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: _buildTaskInfo(task, context)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [_buildTaskActions(task, index, context)],
          ),
        ],
      ),
    );
  }

  Widget _buildTaskInfo(TaskModel task, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              task.title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildActionMenu(context),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          task.description,
          style: TextStyle(fontSize: 14, color: Colors.grey[600]),
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Text(task.assignedTo),
            const SizedBox(width: 8),
            if (task.priority == TaskPriority.high) _buildHighPriorityTag(),
          ],
        ),
      ],
    );
  }

  Widget _buildHighPriorityTag() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.red, width: 1),
      ),
      child: const Text(
        'High Priority',
        style: TextStyle(
          fontSize: 10,
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildTaskActions(TaskModel task, int index, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _buildStatusInfo(task),
        const SizedBox(height: 4),
        _buildStartDateInfo(index),
        const SizedBox(height: 4),
        _buildActionButton(task, context),
      ],
    );
  }

  Widget _buildStatusInfo(TaskModel task) {
    switch (task.status) {
      case TaskStatus.completed:
        return _buildStatusText(
          'Completed: ${_formatDate(task.actualEndDate ?? DateTime.now())}',
          Colors.green,
        );
      case TaskStatus.started:
        return _buildStatusText(
          'Due: ${_formatDate(task.dueDate ?? DateTime.now())}',
          _isOverdue(task.dueDate ?? DateTime.now())
              ? Colors.red
              : Colors.orange,
        );
      case TaskStatus.notStarted:
        return _buildStatusText(
          'Due: ${_formatDate(task.dueDate ?? DateTime.now())}',
          Colors.blueAccent,
        );
    }
  }

  Widget _buildStatusText(String text, Color color) {
    return Text(
      text,
      style: TextStyle(fontSize: 12, color: color, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildStartDateInfo(int index) {
    return Text(
      'Started on: ${_formatDate(DateTime.now().subtract(Duration(days: index)))}',
      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
    );
  }

  Widget _buildActionButton(TaskModel task, BuildContext context) {
    switch (task.status) {
      case TaskStatus.started:
        return GestureDetector(
          onTap: () => context.read<TaskCubit>().completeTask(task.taskId),
          child: _buildActionRow(
            Icons.check_circle,
            'Mark as completed',
            Colors.green,
          ),
        );
      case TaskStatus.notStarted:
        return GestureDetector(
          onTap: () => context.read<TaskCubit>().startTask(task.taskId),
          child: _buildActionRow(
            Icons.play_arrow,
            'Start Task',
            Colors.blueAccent,
          ),
        );
      case TaskStatus.completed:
        return const SizedBox.shrink();
    }
  }

  Widget _buildActionRow(IconData icon, String text, Color color) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color, size: 16),
        const SizedBox(width: 4),
        Text(
          text,
          style: TextStyle(
            fontSize: 10,
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Color _getStatusColor(TaskStatus status) {
    switch (status) {
      case TaskStatus.completed:
        return Colors.green;
      case TaskStatus.started:
        return Colors.blue;
      case TaskStatus.notStarted:
        return Colors.grey;
    }
  }

  String _formatDate(DateTime date) {
    return date.toLocal().toIso8601String().split('T')[0];
  }

  bool _isOverdue(DateTime dueDate) {
    return dueDate.isBefore(DateTime.now());
  }

  Widget _buildActionMenu(BuildContext context) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert, color: Colors.grey),
      onSelected: (value) => _handleMenuAction(value, context),
      itemBuilder: (context) => [
        const PopupMenuItem(
          value: 'edit',
          child: Row(
            children: [
              Icon(Icons.edit, color: Colors.blue),
              SizedBox(width: 8),
              Text('Edit Task'),
            ],
          ),
        ),
        const PopupMenuItem(
          value: 'delete',
          child: Row(
            children: [
              Icon(Icons.delete, color: Colors.red),
              SizedBox(width: 8),
              Text('Delete Task'),
            ],
          ),
        ),
        if (task.status == TaskStatus.notStarted)
          const PopupMenuItem(
            value: 'start',
            child: Row(
              children: [
                Icon(Icons.play_arrow, color: Colors.green),
                SizedBox(width: 8),
                Text('Start Task'),
              ],
            ),
          ),
        if (task.status == TaskStatus.started)
          const PopupMenuItem(
            value: 'complete',
            child: Row(
              children: [
                Icon(Icons.check_circle, color: Colors.green),
                SizedBox(width: 8),
                Text('Complete Task'),
              ],
            ),
          ),
      ],
    );
  }

  void _handleMenuAction(String action, BuildContext context) {
    switch (action) {
      case 'edit':
        _editTask(context);
        break;
      case 'delete':
        _deleteTask(context);
        break;
      case 'start':
        context.read<TaskCubit>().startTask(task.taskId);
        break;
      case 'complete':
        context.read<TaskCubit>().completeTask(task.taskId);
        break;
    }
  }

  void _editTask(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => EditTaskDialog(task: task),
    );
  }

  void _deleteTask(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirm Delete'),
        content: Text('Are you sure you want to delete "${task.title}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<TaskCubit>().deleteTask(task.taskId);
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Task deleted successfully'),
                  backgroundColor: Colors.red,
                ),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('Delete', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
