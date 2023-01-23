import 'package:eng_test/app/core/contracts/mapper.dart';
import 'package:eng_test/app/features/home/domain/entities/user_entity.dart';

class UserMapper extends Mapper<UserEntity> {
  @override
  UserEntity fromMap(Map<String, dynamic> json) {
    return UserEntity(
      login: json["login"] ?? '',
      avatarUrl: json["avatar_url"] ?? '',
      name: json["name"],
      publicRepos: json["public_repos"] ?? 0,
      followers: json["followers"] ?? 0,
      following: json["following"] ?? 0,
    );
  }

  @override
  Map toMap(UserEntity object) {
    return {
      "login": object.login,
      "avatar_url": object.avatarUrl,
      "name": object.name,
      "public_repos": object.publicRepos,
      "followers": object.followers,
      "following": object.following,
    };
  }
}
