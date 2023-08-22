import 'package:flutter/material.dart';
import 'package:movie_application/model/data_model.dart';
import 'package:movie_application/ui/components/widgets/container_image_widget.dart';

class HorizontalScrollableList extends StatelessWidget {
  const HorizontalScrollableList({
    super.key,
    required this.datas,
  });

  final List<DataModel> datas;

  @override
  Widget build(BuildContext context) {
    return SizedBox    (
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: datas.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: ContainerImageWidget(
              id: datas[index].id!,
              image: datas[index].image!,
              rating: datas[index].rating!.toString(),
              genre: 'random',
              title: datas[index].title!,
              releaseDate: datas[index].releaseDate!,
            ),
          );
        },
      ),
    );
  }
}
