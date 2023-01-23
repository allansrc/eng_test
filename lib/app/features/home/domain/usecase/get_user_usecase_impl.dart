import 'package:eng_test/app/features/home/domain/entities/user_entity.dart';
import 'package:eng_test/app/features/home/domain/repository/get_user_repository.dart';

import 'get_user_usecase.dart';

// TODO: Completar a implementação do usecase, realizando as chamadas necessárias
class GetUserUsecaseImpl implements GetUserUsecase {
  final GetUserRepository getUserRepository;

  GetUserUsecaseImpl({required this.getUserRepository});

  @override
  Future<UserEntity> getUserById(String userId) async {
    return await getUserRepository.getUserById(userId);
  }
}
