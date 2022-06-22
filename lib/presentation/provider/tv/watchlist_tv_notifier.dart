import 'package:ditonton/domain/entities/tv/tv.dart';
import 'package:ditonton/domain/usecases/tv/get_watchlist_tv.dart';
import 'package:flutter/material.dart';
import '../../../common/state_enum.dart';

class WatchListTvNotifier extends ChangeNotifier {
  var _watchlistTV = <Tv>[];
  List<Tv> get watchlistTV => _watchlistTV;

  var _watchlistState = RequestState.Empty;
  RequestState get watchlistState => _watchlistState;

  String _message = '';
  String get message => _message;

  WatchListTvNotifier({required this.getWatchlistTV});

  final GetWatchlistTv getWatchlistTV;

  Future<void> fetchWatchlistTV() async {
    _watchlistState = RequestState.Loading;
    notifyListeners();

    final result = await getWatchlistTV.call();
    result.fold(
      (failure) {
        _watchlistState = RequestState.Error;
        _message = failure.message;
        notifyListeners();
      },
      (moviesData) {
        _watchlistState = RequestState.Loaded;
        _watchlistTV = moviesData;
        notifyListeners();
      },
    );
  }
}