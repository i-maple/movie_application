import 'package:flutter/material.dart';
import 'package:movie_application/ui/routes/routes.dart';

import 'ui/utils/theme.dart';

void main() {
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
