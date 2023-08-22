import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_application/logic/service/api_service.dart';
import 'package:movie_application/model/data_model.dart';

import 'horizontal_scrollable_list.dart';

class ListLoaderFutureBuilder extends StatelessWidget {
  const ListLoaderFutureBuilder({super.key, this.page});

  final int? page;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<DataModel>>(
      future: APIService().getAllMoviesList(page ?? 1),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {

          List<DataModel> datas = snapshot.data!;

          return Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Trending Movies',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              HorizontalScrollableList(datas: datas.getRange(0, 25).toList()),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Suggested Movies',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              HorizontalScrollableList(
                  datas: datas.getRange(26, datas.length - 1).toList()),
            ],
          );
        }
        return Center(
          child: Lottie.asset('assets/loading_animation.json'),
        );
      },
    );
  }
}
