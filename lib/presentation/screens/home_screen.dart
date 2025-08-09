import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager_ui/presentation/cubits/task_cubit.dart';
import 'package:task_manager_ui/presentation/cubits/task_state.dart';
import 'package:task_manager_ui/presentation/widgets/add_task_fab.dart';
import 'package:task_manager_ui/presentation/widgets/custom_app_bar.dart';
import 'package:task_manager_ui/presentation/widgets/empty_state_widget.dart';
import 'package:task_manager_ui/presentation/widgets/error_state_widget.dart';
import 'package:task_manager_ui/presentation/widgets/task_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final cubit = context.read<TaskCubit>();
      if (cubit.state is! TaskLoaded) {
        cubit.loadTasks();
      }
    });

    return Scaffold(
      appBar: const CustomAppBar(),
      body: BlocBuilder<TaskCubit, TaskState>(
        builder: (context, state) {
          if (state is TaskLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TaskError) {
            return ErrorStateWidget(message: state.message);
          } else if (state is TaskLoaded) {
            if (state.tasks.isEmpty) {
              return const EmptyStateWidget();
            }
            return TaskListWidget(tasks: state.tasks);
          }

          return const Center(child: Text('Welcome to Task Manager'));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const AddTaskFloatingActionButton(),
    );
  }
}
