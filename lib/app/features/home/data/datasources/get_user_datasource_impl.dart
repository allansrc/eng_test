import 'package:eng_test/app/core/http_client/http_client.dart';
import 'package:eng_test/app/core/http_client/http_client_impl.dart';
import 'package:eng_test/app/features/home/data/mappers/user_mapper.dart';
import 'package:eng_test/app/features/home/domain/entities/user_entity.dart';

import 'get_user_datasource.dart';

// TODO: Recuperar as informações relativas ao seu usuário no Github através de uma chamada GET para "/users/{username}",
//  onde username é o seu nome de usuário na plataforma. Opcionalmente, poderá realizar uma consulta para "/user/1024025"

class GetUserDatasourceImpl implements GetUserDatasource {
  final client = DioClient();

  @override
  Future<UserEntity> getUserById(String userId) async {
    final result = await client.get('/user/$userId');
    final mappedUser = UserMapper().fromMap(result);
    return mappedUser;
  }
}
