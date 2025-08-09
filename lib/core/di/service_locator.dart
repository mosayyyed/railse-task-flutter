import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:task_manager_ui/core/services/hive_service.dart';
import 'package:task_manager_ui/data/datasources/local_storage_datasource.dart';
import 'package:task_manager_ui/data/models/task_model.dart';
import 'package:task_manager_ui/data/repositories/task_repository.dart';
import 'package:task_manager_ui/data/repositories/task_repository_impl.dart';
import 'package:task_manager_ui/presentation/cubits/task_cubit.dart';

final GetIt serviceLocator = GetIt.instance;

class ServiceLocator {
  static Future<void> init() async {
    // Initialize Hive service
    await HiveService.init();

    // Open task box
    final taskBox = await HiveService.openTaskBox();
    serviceLocator.registerLazySingleton<Box<TaskModel>>(() => taskBox);

    // Data Layer - Data Sources
    serviceLocator.registerLazySingleton<LocalStorageDataSource>(
      () => LocalStorageDataSource(serviceLocator<Box<TaskModel>>()),
    );

    // Data Layer - Repositories
    serviceLocator.registerLazySingleton<TaskRepository>(
      () => TaskRepositoryImpl(serviceLocator<LocalStorageDataSource>()),
    );

    // Presentation Layer - Cubits
    serviceLocator.registerFactory<TaskCubit>(
      () => TaskCubit(serviceLocator<TaskRepository>()),
    );
  }

  static void reset() {
    serviceLocator.reset();
  }
}
