import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_application/ui/routes/routes.dart';

import 'ui/utils/theme.dart';

Future<void> main() async {
  await dotenv.load(fileName: 'assets/.env');
  runApp(const MovieApplication());
}

class MovieApplication extends StatelessWidget {
  const MovieApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: kThemeData,
      initialRoute: AppRouter.homeRoute,
      routes: AppRouter.routes,
    );
  }
}
