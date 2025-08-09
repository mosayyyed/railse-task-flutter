import 'package:flutter/material.dart';
import 'package:task_manager_ui/presentation/widgets/add_task_dialog.dart';

class AddTaskFloatingActionButton extends StatelessWidget {
  const AddTaskFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      onPressed: () => _onAddTaskPressed(context),
      child: const Icon(Icons.add),
    );
  }

  void _onAddTaskPressed(BuildContext context) {
    showDialog(context: context, builder: (context) => const AddTaskDialog());
  }
}
