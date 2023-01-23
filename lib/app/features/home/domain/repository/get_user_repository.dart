import 'package:eng_test/app/features/home/domain/entities/user_entity.dart';

// TODO (opcional): Completar a implementação do repositório, realizando as chamadas necessárias
abstract class GetUserRepository {
  Future<UserEntity> getUserById(String userId);
}
