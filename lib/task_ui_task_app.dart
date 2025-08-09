import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager_ui/core/di/service_locator.dart';
import 'package:task_manager_ui/core/theme/app_theme.dart';
import 'package:task_manager_ui/presentation/cubits/task_cubit.dart';
import 'package:task_manager_ui/presentation/screens/home_screen.dart';

class TaskUITaskApp extends StatelessWidget {
  const TaskUITaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => serviceLocator<TaskCubit>(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Task Manager',
        home: const HomeScreen(),
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system, // يتبع إعدادات النظام
      ),
    );
  }
}
