import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:movie_application/model/data_model.dart';

class APIService {
  String url =
      'https://api.themoviedb.org/3/discover/movie/?api_key=${dotenv.env['API_KEY']}';
  List<DataModel> models = [];

  Future<http.Response> initialize() async {
    return await http.get(Uri.parse(url),
        headers: {'Authorization': 'Bearer ${dotenv.env['BEARER']}'});
  }

  getAllMoviesList() async {
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
