import 'package:eng_test/app/features/home/presenter/home_page.dart';
import 'package:flutter/material.dart';

import 'di/app_injector.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final appInjector = AppInjector();

  @override
  void initState() {
    super.initState();
    appInjector.call();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: (opcional) Se preferir, pode usar Provider invés do get_it
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(),
    );
  }
}
