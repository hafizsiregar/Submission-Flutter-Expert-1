import 'package:ditonton/presentation/pages/main_page.dart';
import 'package:ditonton/presentation/pages/movie/nowplay_movie_page.dart';
import 'package:ditonton/presentation/pages/tv/nowplay_tv_page.dart';
import 'package:ditonton/presentation/pages/tv/popular_tv_page.dart';
import 'package:ditonton/presentation/pages/tv/top_rated_tv_page.dart';
import 'package:ditonton/presentation/pages/tv/tv_page.dart';
import 'package:ditonton/presentation/pages/tv/watchlist_tv_page.dart';
import 'package:flutter/material.dart';
import '../presentation/pages/about_page.dart';
import '../presentation/pages/movie/movie_detail_page.dart';
import '../presentation/pages/movie/popular_movies_page.dart';
import '../presentation/pages/movie/search_page.dart';
import '../presentation/pages/movie/top_rated_movies_page.dart';
import '../presentation/pages/movie/watchlist_movies_page.dart';
import '../presentation/pages/tv/tv_detail_page.dart';

class AppRoute {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainPage.routeName:
        return MaterialPageRoute(
          builder: (context) => MainPage()
      );
      case AboutPage.routeName:
        return MaterialPageRoute(
          builder: (context) => AboutPage()
      );
      case WatchlistMoviesPage.routeName:
        return MaterialPageRoute(
          builder: (context) => WatchlistMoviesPage()
      );
      case MovieDetailPage.routeName:
        return MaterialPageRoute(
          builder: (context) => MovieDetailPage(
            id: settings.arguments as int
          )
      );
      case NowplayMoviePage.routeName:
        return MaterialPageRoute(
          builder: (context) => NowplayMoviePage()
      );
      case SearchPage.routeName:
        return MaterialPageRoute(
          builder: (context) => SearchPage()
      );
      case TopRatedMoviesPage.routeName:
        return MaterialPageRoute(
          builder: (context) => TopRatedMoviesPage()
      );
      case PopularMoviesPage.routeName:
        return MaterialPageRoute(
          builder: (context) => PopularMoviesPage()
      );
      case TvPage.routeName:
        return MaterialPageRoute(
          builder: (context) => TvPage()
      );
      case NowplayingTvPage.routeName:
        return MaterialPageRoute(
          builder: (context) => NowplayingTvPage()
      );
      case TvDetailPage.routeName:
        return MaterialPageRoute(
          builder: (context) => TvDetailPage(
            id: settings.arguments as int
          )
      );
      case TopRatedTvPage.routeName:
        return MaterialPageRoute(
          builder: (context) => TopRatedTvPage()
      );
      case PopularTvPage.routeName:
        return MaterialPageRoute(
          builder: (context) => PopularTvPage()
      );
      case WatchlistTvPage.routeName:
        return MaterialPageRoute(
          builder: (context) => WatchlistTvPage()
      );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}