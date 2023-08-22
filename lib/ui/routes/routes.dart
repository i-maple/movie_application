import 'package:movie_application/ui/screens/home_screen.dart';
import 'package:movie_application/ui/screens/movie_detail_screen.dart';
import 'package:movie_application/ui/screens/search_screen.dart';

class AppRouter {
  static const String homeRoute = 'home';
  static const String movieDetailRoute = 'movie-detail';
  static const String searchRoute = 'search';

  static final routes = {
    homeRoute: (_) => const HomeScreen(),
    movieDetailRoute: (_) => const MovieDetailScreen(),
    searchRoute: (_) => const SearchScreen(),
  };
}
