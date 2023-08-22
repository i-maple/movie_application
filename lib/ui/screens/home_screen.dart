import 'package:flutter/material.dart';
import 'package:movie_application/ui/components/widgets/list_loader_future_builder.dart';
import 'package:movie_application/ui/routes/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Movies',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 8.0,
            ),
            child: IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, AppRouter.searchRoute),
              icon: const Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListLoaderFutureBuilder(
                page: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
