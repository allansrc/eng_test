import 'package:eng_test/app/features/home/domain/entities/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'home_controller.dart';

// TODO: Popular a UI com as informações recuperadas do serviço
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = GetIt.I.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eng Test Flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<UserEntity>(
          future: controller.getUserById(),
          builder: (context, userData) {
            if (userData.data != null) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
                    child: Image.network(
                      userData.data!.avatarUrl ?? '',
                      width: 200,
                      height: 200,
                    ),
                  ),
                  Text(
                    '${userData.data?.name}',
                    style: const TextStyle(fontSize: 24),
                  ),
                  Text(
                    '${userData.data?.login}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              '${userData.data?.followers}',
                              style: const TextStyle(fontSize: 18),
                            ),
                            const Text(
                              'Seguidores',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '${userData.data?.following}',
                              style: const TextStyle(fontSize: 18),
                            ),
                            const Text(
                              'Seguindo',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '${userData.data?.publicRepos}',
                              style: const TextStyle(fontSize: 18),
                            ),
                            const Text(
                              'Reposotórios',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
