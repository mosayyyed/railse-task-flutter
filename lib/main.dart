import 'package:flutter/material.dart';
import 'package:task_manager_ui/core/di/service_locator.dart';
import 'package:task_manager_ui/task_ui_task_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ServiceLocator.init();

  runApp(const TaskUITaskApp());
}
