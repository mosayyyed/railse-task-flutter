import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager_ui/data/datasources/local_storage_datasource.dart';
import 'package:task_manager_ui/data/repositories/task_repository.dart';
import 'package:task_manager_ui/data/repositories/task_repository_impl.dart';
import 'package:task_manager_ui/presentation/cubits/task_cubit.dart';

final GetIt serviceLocator = GetIt.instance;

class ServiceLocator {
  static Future<void> init() async {
    // External dependencies
    final sharedPreferences = await SharedPreferences.getInstance();
    serviceLocator.registerLazySingleton<SharedPreferences>(
      () => sharedPreferences,
    );

    // Data Layer - Data Sources
    serviceLocator.registerLazySingleton<LocalStorageDataSource>(
      () => LocalStorageDataSource(serviceLocator<SharedPreferences>()),
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
