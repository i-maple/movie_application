import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:movie_application/model/data_model.dart';

class APIService {
  static String baseUrl =
      'https://api.themoviedb.org/';
  static String apikey = 'api_key=${dotenv.env['API_KEY']}';
  static String discoverMovie = '/3/discover/movie/?';

  List<DataModel> models = [];

  Future<http.Response> initialize() async {
    return await http.get(Uri.parse(baseUrl+discoverMovie+apikey),
        headers: {'Authorization': 'Bearer ${dotenv.env['BEARER']}'});
  }

  Future<List<DataModel>> getAllMoviesList() async {
    http.Response res = await initialize();
    Map moviesMapsList = jsonDecode(res.body);
    for (Map maps in moviesMapsList['results']) {
      models.add(DataModel.fromJson(maps));
    }
    return models;
  }

  getMovieDetails(int id) {
    DataModel movieModel = models.firstWhere((element) => element.id == id);
    return movieModel;
  }
}
