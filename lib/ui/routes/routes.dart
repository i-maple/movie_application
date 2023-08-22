import 'package:movie_application/ui/screens/home_screen.dart';
import 'package:movie_application/ui/screens/movie_detail_screen.dart';

class AppRouter{

  static const String homeRoute = 'home';
  static const String movieDetailRoute = 'movie-detail';


  static final routes = {
        homeRoute: (_) => const HomeScreen(),
        movieDetailRoute: (_) => const MovieDetailScreen(),
      };

}