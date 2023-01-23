import 'package:eng_test/app/features/home/domain/entities/user_entity.dart';

// TODO: Recuperar as informações relativas ao seu usuário no Github através de uma chamada GET para "/users/{username}",
//  onde username é o seu nome de usuário na plataforma. Opcionalmente, poderá realizar uma consulta para "/user/1024025"

abstract class GetUserDatasource {
  Future<UserEntity> getUserById(String userId);
}
