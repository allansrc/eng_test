// TODO: Criar um modelo para recuperar os dados do usuário baseado no JSON da url: https://api.github.com/user/1024025

class UserEntity {
  UserEntity({
    this.login,
    this.avatarUrl,
    this.name,
    this.publicRepos,
    this.followers,
    this.following,
  });

  final String? login;
  final String? avatarUrl;
  final String? name;
  final int? publicRepos;
  final int? followers;
  final int? following;

  UserEntity copyWith({
    String? login,
    String? avatarUrl,
    String? name,
    int? publicRepos,
    int? followers,
    int? following,
  }) =>
      UserEntity(
        login: login ?? this.login,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        name: name ?? this.name,
        publicRepos: publicRepos ?? this.publicRepos,
        followers: followers ?? this.followers,
        following: following ?? this.following,
      );
}
