
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_application/logic/service/api_service.dart';
import 'package:movie_application/model/data_model.dart';
import 'package:movie_application/ui/components/widgets/container_image_widget.dart';

class ListLoaderFutureBuilder extends StatelessWidget {
  const ListLoaderFutureBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<DataModel>>(
      future: APIService().getAllMoviesList(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          var datas = snapshot.data;

          return Expanded(
            child: ListView.builder(
              itemCount: datas!.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ContainerImageWidget(
                  image: datas[index].image!,
                  rating: datas[index].rating!.toString(),
                  genre: 'random',
                  title: datas[index].title!,
                );
              },
            ),
          );
        }
        return Center(
          child: Lottie.asset('assets/loading_animation.json'),
        );
      },
    );
  }
}
