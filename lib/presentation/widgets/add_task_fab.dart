import 'package:flutter/material.dart';
import 'package:task_manager_ui/presentation/widgets/add_task_bottom_sheet.dart';

class AddTaskFloatingActionButton extends StatelessWidget {
  const AddTaskFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => _onAddTaskPressed(context),
      tooltip: 'Add Task',
      elevation: 0,
      child: const Icon(Icons.add),
    );
  }

  void _onAddTaskPressed(BuildContext context) {
    AddTaskBottomSheet.show(context);
  }
}
