import 'package:flutter/material.dart';
import 'package:movie_application/ui/routes/routes.dart';

class ContainerImageWidget extends StatelessWidget {
  const ContainerImageWidget({
    super.key,
    required this.image,
    this.rating,
    required this.title,
    required this.releaseDate,
    required this.genre,
    required this.id,
    this.height
  });

  final int id;
  final String image;
  final String? rating;
  final String title;
  final String genre;
  final String releaseDate;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRouter.movieDetailRoute,
          arguments: id,
        );
      },
      child: Container(
        height: height?? 300,
        margin: const EdgeInsets.only(bottom: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Hero(
            tag: id,
            child: Image.network(
              'https://themoviedb.org/t/p/w600_and_h900_bestv2/$image',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
