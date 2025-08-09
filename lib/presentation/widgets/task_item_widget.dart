import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:task_manager_ui/data/models/task_model.dart';
import 'package:task_manager_ui/presentation/cubits/task_cubit.dart';
import 'package:task_manager_ui/presentation/widgets/edit_task_dialog.dart';

class TaskItemWidget extends StatelessWidget {
  final TaskModel task;
  final int index;

  const TaskItemWidget({super.key, required this.task, required this.index});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Slidable(
      key: ValueKey(task.taskId),

      endActionPane: ActionPane(
        motion: const BehindMotion(),
        dismissible: DismissiblePane(
          onDismissed: () => _deleteTaskWithConfirm(context),
          confirmDismiss: () => _showDeleteConfirmDialog(context),
        ),
        children: [
          SlidableAction(
            onPressed: (context) => _editTask(context),
            backgroundColor: colorScheme.primary,
            foregroundColor: colorScheme.onPrimary,
            icon: Icons.edit_rounded,
            label: 'Edit',
          ),
          SlidableAction(
            onPressed: (context) => _deleteTaskWithConfirm(context),
            backgroundColor: colorScheme.error,
            foregroundColor: colorScheme.onError,
            icon: Icons.delete_rounded,
            label: 'Delete',
          ),
        ],
      ),

      startActionPane: _buildStartActionPane(context),

      child: Opacity(
        opacity: task.status == TaskStatus.completed ? 0.5 : 1.0,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: colorScheme.surface,
            border: Border(
              left: BorderSide(
                color: _getStatusColor(task.status, colorScheme),
                width: 5.0,
              ),
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
        ),
      ),
    );
  }

  ActionPane? _buildStartActionPane(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    if (task.status == TaskStatus.completed) return null;

    if (task.status == TaskStatus.notStarted) {
      return ActionPane(
        motion: const BehindMotion(),
        children: [
          SlidableAction(
            onPressed: (context) =>
                context.read<TaskCubit>().startTask(task.taskId),
            backgroundColor: colorScheme.tertiary,
            foregroundColor: colorScheme.onTertiary,
            icon: Icons.play_arrow_rounded,
            label: 'Start',
          ),
        ],
      );
    } else if (task.status == TaskStatus.started) {
      return ActionPane(
        motion: const BehindMotion(),
        children: [
          SlidableAction(
            onPressed: (context) =>
                context.read<TaskCubit>().completeTask(task.taskId),
            backgroundColor: colorScheme.secondary,
            foregroundColor: colorScheme.onSecondary,
            icon: Icons.check_circle_rounded,
            label: 'Complete',
          ),
        ],
      );
    }

    return null;
  }

  Future<bool> _showDeleteConfirmDialog(BuildContext context) async {
    final colorScheme = Theme.of(context).colorScheme;

    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        backgroundColor: colorScheme.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Row(
          children: [
            Icon(
              Icons.warning_amber_rounded,
              color: colorScheme.error,
              size: 24,
            ),
            const SizedBox(width: 8),
            Text(
              'Confirm Delete',
              style: TextStyle(
                color: colorScheme.onSurface,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        content: Text(
          'Are you sure you want to delete "${task.title}"?\n\nThis action cannot be undone.',
          style: TextStyle(color: colorScheme.onSurface),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            style: TextButton.styleFrom(
              foregroundColor: colorScheme.onSurfaceVariant,
            ),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: ElevatedButton.styleFrom(
              backgroundColor: colorScheme.error,
              foregroundColor: colorScheme.onError,
            ),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
    return result ?? false;
  }

  void _deleteTaskWithConfirm(BuildContext context) async {
    final confirmed = await _showDeleteConfirmDialog(context);
    if (!confirmed) {
      return;
    }

    final colorScheme = Theme.of(context).colorScheme;
    context.read<TaskCubit>().deleteTask(task.taskId);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(Icons.delete_rounded, color: colorScheme.onError),
            const SizedBox(width: 8),
            Expanded(child: Text('Task "${task.title}" deleted successfully')),
          ],
        ),
        backgroundColor: colorScheme.error,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        action: SnackBarAction(
          label: 'Undo',
          textColor: colorScheme.onError,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('Undo feature coming soon!'),
                backgroundColor: colorScheme.primary,
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildTaskInfo(TaskModel task, BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Flexible(
              child: Text(
                task.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            const SizedBox(width: 8),
            _buildActionMenu(context),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          task.description,
          style: TextStyle(fontSize: 14, color: colorScheme.onSurfaceVariant),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Flexible(
              child: Text(
                task.assignedTo,
                style: TextStyle(color: colorScheme.onSurface),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            const SizedBox(width: 8),
            if (task.priority == TaskPriority.high)
              _buildHighPriorityTag(colorScheme),
          ],
        ),
      ],
    );
  }

  Widget _buildHighPriorityTag(ColorScheme colorScheme) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colorScheme.error, width: 1),
      ),
      child: Text(
        'High Priority',
        style: TextStyle(
          fontSize: 10,
          color: colorScheme.onErrorContainer,
          fontWeight: FontWeight.bold,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
    );
  }

  Widget _buildTaskActions(TaskModel task, int index, BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _buildStatusInfo(task, colorScheme),
        const SizedBox(height: 4),
        _buildStartDateInfo(index, colorScheme),
        const SizedBox(height: 4),
        _buildActionButton(task, context),
      ],
    );
  }

  Widget _buildStatusInfo(TaskModel task, ColorScheme colorScheme) {
    switch (task.status) {
      case TaskStatus.completed:
        return _buildStatusText(
          'Completed: ${_formatDate(task.actualEndDate ?? DateTime.now())}',
          colorScheme.tertiary,
        );
      case TaskStatus.started:
        return _buildStatusText(
          'Due: ${_formatDate(task.dueDate ?? DateTime.now())}',
          _isOverdue(task.dueDate ?? DateTime.now())
              ? colorScheme.error
              : colorScheme.secondary,
        );
      case TaskStatus.notStarted:
        return _buildStatusText(
          'Due: ${_formatDate(task.dueDate ?? DateTime.now())}',
          colorScheme.primary,
        );
    }
  }

  Widget _buildStatusText(String text, Color color) {
    return Text(
      text,
      style: TextStyle(fontSize: 12, color: color, fontWeight: FontWeight.bold),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }

  Widget _buildStartDateInfo(int index, ColorScheme colorScheme) {
    return Text(
      'Started on: ${_formatDate(DateTime.now().subtract(Duration(days: index)))}',
      style: TextStyle(fontSize: 12, color: colorScheme.onSurfaceVariant),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }

  Widget _buildActionButton(TaskModel task, BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    switch (task.status) {
      case TaskStatus.started:
        return GestureDetector(
          onTap: () => context.read<TaskCubit>().completeTask(task.taskId),
          child: _buildActionRow(
            Icons.check_circle_rounded,
            'Mark as completed',
            colorScheme.tertiary,
          ),
        );
      case TaskStatus.notStarted:
        return GestureDetector(
          onTap: () => context.read<TaskCubit>().startTask(task.taskId),
          child: _buildActionRow(
            Icons.play_arrow_rounded,
            'Start Task',
            colorScheme.primary,
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
        Flexible(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 10,
              color: color,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ],
    );
  }

  Color _getStatusColor(TaskStatus status, ColorScheme colorScheme) {
    switch (status) {
      case TaskStatus.completed:
        return Colors.green;
      case TaskStatus.started:
        return Colors.blueAccent;
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
    final colorScheme = Theme.of(context).colorScheme;

    return PopupMenuButton<String>(
      icon: Icon(Icons.more_vert_rounded, color: colorScheme.onSurfaceVariant),
      onSelected: (value) => _handleMenuAction(value, context),
      surfaceTintColor: colorScheme.surface,
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'edit',
          child: Row(
            children: [
              Icon(Icons.edit_rounded, color: colorScheme.primary),
              const SizedBox(width: 8),
              Text(
                'Edit Task',
                style: TextStyle(color: colorScheme.onSurface),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'delete',
          child: Row(
            children: [
              Icon(Icons.delete_rounded, color: colorScheme.error),
              const SizedBox(width: 8),
              Text(
                'Delete Task',
                style: TextStyle(color: colorScheme.onSurface),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ],
          ),
        ),
        if (task.status == TaskStatus.notStarted)
          PopupMenuItem(
            value: 'start',
            child: Row(
              children: [
                Icon(Icons.play_arrow_rounded, color: colorScheme.tertiary),
                const SizedBox(width: 8),
                Text(
                  'Start Task',
                  style: TextStyle(color: colorScheme.onSurface),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ),
          ),
        if (task.status == TaskStatus.started)
          PopupMenuItem(
            value: 'complete',
            child: Row(
              children: [
                Icon(Icons.check_circle_rounded, color: colorScheme.secondary),
                const SizedBox(width: 8),
                Text(
                  'Complete Task',
                  style: TextStyle(color: colorScheme.onSurface),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
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
        _deleteTaskWithConfirm(context);
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
}
