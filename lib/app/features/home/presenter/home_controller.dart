import 'package:eng_test/app/features/home/domain/entities/user_entity.dart';
import 'package:eng_test/app/features/home/domain/usecase/get_user_usecase.dart';

// TODO (opcional): Completar a controller, realizando as chamadas necessárias
class HomeController {
  final GetUserUsecase getUserUsecase;

  HomeController({required this.getUserUsecase});

  Future<UserEntity> getUserById() async {
    const linusId = '1024025';
    final result = await getUserUsecase.getUserById(linusId);
    return result;
  }
}
