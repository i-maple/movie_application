import 'package:flutter/material.dart';

class ContainerImageWidget extends StatelessWidget {
  const ContainerImageWidget({super.key, required this.image, this.rating, required this.title, required this.genre});

  final String image;
  final String? rating;
  final String title;
  final String genre;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.red,
          child: Row(
            children: [
              Image.network(
                'https://themoviedb.org/t/p/w600_and_h900_bestv2/$image',
                fit: BoxFit.fitHeight,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(title, maxLines: 3,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
