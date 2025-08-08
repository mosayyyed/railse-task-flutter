import 'package:flutter/material.dart';
import 'package:task_manager_ui/models/task_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tasks = _generateSampleTasks();
    final sortedTasks = _sortTasks(tasks);

    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildTaskList(sortedTasks),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFloatingActionButton(context),
    );
  }

  // Generate sample tasks data
  List<TaskModel> _generateSampleTasks() {
    return [
      _createTask(
        '1',
        'Task 1',
        'Description of task 1',
        'Mohammed',
        5,
        3,
        2,
        TaskStatus.started,
        TaskPriority.high,
      ),
      _createTask(
        '2',
        'Task 2',
        'Description of task 2',
        'Ahmed',
        4,
        2,
        3,
        TaskStatus.notStarted,
        TaskPriority.medium,
      ),
      _createTask(
        '3',
        'Task 3',
        'Description of task 3',
        'Fatima',
        6,
        4,
        1,
        TaskStatus.completed,
        TaskPriority.low,
      ),
      _createTask(
        '4',
        'Task 4',
        'Description of task 4',
        'Ali',
        2,
        1,
        5,
        TaskStatus.notStarted,
        TaskPriority.high,
      ),
      _createTask(
        '5',
        'Task 5',
        'Description of task 5',
        'Sara',
        1,
        0,
        4,
        TaskStatus.started,
        TaskPriority.medium,
      ),
      _createTask(
        '6',
        'Task 6',
        'Description of task 6',
        'Omar',
        3,
        2,
        6,
        TaskStatus.completed,
        TaskPriority.low,
      ),
      _createTask(
        '7',
        'Task 7',
        'Description of task 7',
        'Laila',
        7,
        5,
        2,
        TaskStatus.notStarted,
        TaskPriority.high,
      ),
      _createTask(
        '8',
        'Task 8',
        'Description of task 8',
        'Youssef',
        8,
        6,
        3,
        TaskStatus.started,
        TaskPriority.medium,
      ),
      _createTask(
        '9',
        'Task 9',
        'Description of task 9',
        'Aisha',
        9,
        7,
        1,
        TaskStatus.completed,
        TaskPriority.low,
      ),
      _createTask(
        '10',
        'Task 10',
        'Description of task 10',
        'Hassan',
        10,
        8,
        5,
        TaskStatus.notStarted,
        TaskPriority.high,
      ),
      _createTask(
        '11',
        'Task 11',
        'Description of task 11',
        'Zainab',
        11,
        9,
        4,
        TaskStatus.started,
        TaskPriority.medium,
      ),
    ];
  }

  // Helper method to create a task
  TaskModel _createTask(
    String id,
    String title,
    String description,
    String assignedTo,
    int createdDaysAgo,
    int startDaysAgo,
    int dueDaysFromNow,
    TaskStatus status,
    TaskPriority priority,
  ) {
    return TaskModel(
      taskId: id,
      title: title,
      description: description,
      assignedTo: assignedTo,
      createdDate: DateTime.now().subtract(Duration(days: createdDaysAgo)),
      startDate: DateTime.now().subtract(Duration(days: startDaysAgo)),
      dueDate: DateTime.now().add(Duration(days: dueDaysFromNow)),
      actualEndDate: status == TaskStatus.completed ? DateTime.now() : null,
      status: status,
      priority: priority,
    );
  }

  // Sort tasks by status and start date
  List<TaskModel> _sortTasks(List<TaskModel> tasks) {
    tasks.sort((a, b) {
      if (a.status != b.status) {
        return a.status.index.compareTo(b.status.index);
      }
      return a.startDate.compareTo(b.startDate);
    });
    return tasks;
  }

  // Build app bar
  AppBar _buildAppBar() {
    return AppBar(title: const Text('Task Manager UI'), elevation: 2);
  }

  // Build task list
  Widget _buildTaskList(List<TaskModel> tasks) {
    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 80.0),
      itemCount: tasks.length,
      separatorBuilder: (context, index) => const Divider(height: 1.0),
      itemBuilder: (context, index) => _buildTaskItem(tasks[index], index),
    );
  }

  // Build individual task item
  Widget _buildTaskItem(TaskModel task, int index) {
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
          Expanded(child: _buildTaskInfo(task)),
          _buildTaskActions(task, index),
        ],
      ),
    );
  }

  // Build task information section
  Widget _buildTaskInfo(TaskModel task) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          task.title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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

  // Build high priority tag
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

  // Build task actions section
  Widget _buildTaskActions(TaskModel task, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _buildStatusInfo(task),
        const SizedBox(height: 4),
        _buildStartDateInfo(index),
        const SizedBox(height: 4),
        _buildActionButton(task),
      ],
    );
  }

  // Build status information
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

  // Build status text widget
  Widget _buildStatusText(String text, Color color) {
    return Text(
      text,
      style: TextStyle(fontSize: 12, color: color, fontWeight: FontWeight.bold),
    );
  }

  // Build start date information
  Widget _buildStartDateInfo(int index) {
    return Text(
      'Started on: ${_formatDate(DateTime.now().subtract(Duration(days: index)))}',
      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
    );
  }

  // Build action button based on task status
  Widget _buildActionButton(TaskModel task) {
    switch (task.status) {
      case TaskStatus.started:
        return _buildActionRow(
          Icons.check_circle,
          'Mark as completed',
          Colors.green,
        );
      case TaskStatus.notStarted:
        return _buildActionRow(
          Icons.play_arrow,
          'Start Task',
          Colors.blueAccent,
        );
      case TaskStatus.completed:
        return const SizedBox.shrink();
    }
  }

  // Build action row with icon and text
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

  // Build floating action button
  Widget _buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      onPressed: () => _onAddTaskPressed(context),
      child: const Icon(Icons.add),
    );
  }

  // Handle add task button press
  void _onAddTaskPressed(BuildContext context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Add Task button pressed')));
  }

  // Helper methods
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
}
