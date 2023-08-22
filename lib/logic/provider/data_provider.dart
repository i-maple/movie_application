import 'package:flutter/material.dart';
import 'package:movie_application/logic/service/api_service.dart';
import 'package:movie_application/model/data_model.dart';

class DataProvider extends ChangeNotifier {
  List<DataModel> _searchedModel = [];

  List<DataModel> get searchedModel => _searchedModel;

  searchAModel(String title) {
    List<DataModel> searches =  APIService().models.where(
          (element) => element.title!.contains(title),
        ).toList();

    _searchedModel = searches;
  }
}
