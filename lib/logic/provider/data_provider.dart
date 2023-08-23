import 'package:flutter/material.dart';
import 'package:movie_application/logic/service/api_service.dart';
import 'package:movie_application/model/data_model.dart';

class DataProvider extends ChangeNotifier {
  List<DataModel> _searchedModel = [];

  List<DataModel> get searchedModel => _searchedModel;

  searchAModel(String title) async {
    List<DataModel> searches = await APIService().getAllMoviesList(2);

    var src = searches
        .where(
          (element) => element.title!.contains(title),
        )
        .toList();
    _searchedModel = src;
    notifyListeners();
  }
}
