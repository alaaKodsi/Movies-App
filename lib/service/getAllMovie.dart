import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movies_store/data/model/ListOfMoviesModel.dart';
import 'package:movies_store/data/model/MoviesCategoriesModel.dart';

class apiService {
  static Future<ListOfMoviesModel> fetchAllMovies() async {
    final response =
        await http.get(Uri.parse('https://darsoft.b-cdn.net/movies.json'));
    if (response.statusCode == 200) {
      // print(response.statusCode);
      // print("--------------------------------------------------------");
      print(response.body);
      return ListOfMoviesModel.fromJson(jsonDecode(response.body));
      // print(response.body);/
    } else {
      throw Exception('Failed to load Categor Movie');
    }
  }
}
