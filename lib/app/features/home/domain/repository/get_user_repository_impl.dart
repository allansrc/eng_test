import 'package:eng_test/app/features/home/data/datasources/get_user_datasource.dart';
import 'package:eng_test/app/features/home/domain/entities/user_entity.dart';

import 'get_user_repository.dart';

// TODO (opcional): Completar a implementação do repositório, realizando as chamadas necessárias
class GetUserRepositoryImpl implements GetUserRepository {
  final GetUserDatasource getUserDatasource;

  GetUserRepositoryImpl({required this.getUserDatasource});

  @override
  Future<UserEntity> getUserById(String userId) async {
    return await getUserDatasource.getUserById(userId);
  }
}
