import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:movie_application/model/data_model.dart';

class APIService {
  static String baseUrl = 'https://api.themoviedb.org/';
  static String apikey = 'api_key=${dotenv.env['API_KEY']}';
  static String discoverMovie = '/3/discover/movie/?';
  static String pageOfResponse = '&page=';

  static final List<DataModel> _models = [];

  Future<http.Response> initialize(int page) async {
    return await http.get(
        Uri.parse(baseUrl +
            discoverMovie +
            apikey +
            pageOfResponse +
            page.toString()),
        headers: {'Authorization': 'Bearer ${dotenv.env['BEARER']}'});
  }

  Future<List<DataModel>> getAllMoviesList(int page) async {
    for (int i = 1; i <= page; i++) {
      http.Response res = await initialize(i);
      Map moviesMapsList = jsonDecode(res.body);
      for (Map maps in moviesMapsList['results']) {
        _models.add(DataModel.fromJson(maps));
      }
    }
    return _models;
  }

  getMovieDetails(int id) {
    DataModel movieModel = _models.singleWhere((element) {
      return element.id==id;
    });
    return movieModel;
  }
}
