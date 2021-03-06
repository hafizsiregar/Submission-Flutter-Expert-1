import 'package:ditonton/domain/usecases/movie/get_now_playing_movies.dart';
import 'package:flutter/material.dart';

import '../../../common/state_enum.dart';
import '../../../domain/entities/movie/movie.dart';

class NowPlayMovieNotifier extends ChangeNotifier {
  final GetNowPlayingMovies getNowPlayingMovies;

  NowPlayMovieNotifier({required this.getNowPlayingMovies});

  RequestState _state = RequestState.Empty;
  RequestState get state => _state;

  List<Movie> _movies = [];
  List<Movie> get movies => _movies;

  String _message = '';
  String get message => _message;

  Future<void> fetchNowPlayingovies() async {
    _state = RequestState.Loading;
    notifyListeners();

    final result = await getNowPlayingMovies.execute();

    result.fold(
          (failure) {
        _message = failure.message;
        _state = RequestState.Error;
        notifyListeners();
      },
          (moviesData) {
        _movies = moviesData;
        _state = RequestState.Loaded;
        notifyListeners();
      },
    );
  }
}