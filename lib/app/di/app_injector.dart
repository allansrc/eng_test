import 'package:eng_test/app/features/home/data/datasources/get_user_datasource.dart';
import 'package:eng_test/app/features/home/data/datasources/get_user_datasource_impl.dart';
import 'package:eng_test/app/features/home/domain/repository/get_user_repository.dart';
import 'package:eng_test/app/features/home/domain/repository/get_user_repository_impl.dart';
import 'package:eng_test/app/features/home/domain/usecase/get_user_usecase.dart';
import 'package:eng_test/app/features/home/domain/usecase/get_user_usecase_impl.dart';
import 'package:eng_test/app/features/home/presenter/home_controller.dart';
import 'package:get_it/get_it.dart';

// TODO (opcional): Declarar todos os modulos necessários. (exemplo: cliente http)
class AppInjector {
  void call() {
    // Controllers
    GetIt.I.registerFactory<HomeController>(
      () => HomeController(
        getUserUsecase: GetIt.I<GetUserUsecase>(),
      ),
    );

    // Usecases
    GetIt.I.registerFactory<GetUserUsecase>(
      () => GetUserUsecaseImpl(
        getUserRepository: GetIt.I<GetUserRepository>(),
      ),
    );

    // Repositories
    GetIt.I.registerFactory<GetUserRepository>(
      () => GetUserRepositoryImpl(
        getUserDatasource: GetIt.I<GetUserDatasource>(),
      ),
    );

    // Datasources
    GetIt.I.registerFactory<GetUserDatasource>(
      () => GetUserDatasourceImpl(),
    );

    // Services
  }
}
