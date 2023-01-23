import 'package:eng_test/app/features/home/domain/entities/user_entity.dart';

abstract class GetUserUsecase {
  // TODO: Completar a implementação do usecase, realizando as chamadas necessárias
  Future<UserEntity> getUserById(String userId);
}
