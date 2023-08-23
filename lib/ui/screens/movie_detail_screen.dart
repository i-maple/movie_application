import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_application/logic/service/api_service.dart';
import 'package:movie_application/model/data_model.dart';
import 'package:movie_application/ui/utils/colors.dart';

import '../components/widgets/card_widget.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({super.key, this.id});

  final int? id;

  DataModel get _dataModel => APIService().getMovieDetails(id!);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: size.width,
            height: size.height,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: 10,
                sigmaY: 10,
              ),
              child: Image.network(
                'https://themoviedb.org/t/p/w600_and_h900_bestv2/${_dataModel.image}',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                child: Image.network(
                  'https://themoviedb.org/t/p/w600_and_h900_bestv2/${_dataModel.image}',
                  fit: BoxFit.cover,
                  height: size.height * 0.5,
                  width: size.width,
                ),
              ),
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CardWidget(
                          leading: 'title',
                          title: _dataModel.title!,
                          icon: const Icon(
                            Icons.title,
                          ),
                        ),
                        CardWidget(
                          leading: 'released',
                          title: _dataModel.releaseDate!,
                          icon: const Icon(
                            Icons.calendar_month,
                          ),
                        ),
                        CardWidget(
                          leading: 'rating',
                          title: _dataModel.rating.toString(),
                          icon: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                        ),
                        Card(
                          color: AppColors.primaryBackground.withOpacity(0.4),
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            _dataModel.overview!,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
