import 'package:ditonton/domain/entities/tv/tv.dart';
import 'package:ditonton/domain/usecases/tv/get_now_playing_tv.dart';
import 'package:flutter/material.dart';
import '../../../common/state_enum.dart';

class TvNowPlayNotifier extends ChangeNotifier {
  final GetNowPlayingTv getNowPlayingTV;

  TvNowPlayNotifier({required this.getNowPlayingTV});

  RequestState _state = RequestState.Empty;
  RequestState get state => _state;

  List<Tv> _tv = [];
  List<Tv> get tv => _tv;

  String _message = '';
  String get message => _message;

  Future<void> fetchNowPlayingtv() async {
    _state = RequestState.Loading;
    notifyListeners();

    final result = await getNowPlayingTV.call();

    result.fold(
          (failure) {
        _message = failure.message;
        _state = RequestState.Error;
        notifyListeners();
      },
          (tvData) {
        _tv = tvData;
        _state = RequestState.Loaded;
        notifyListeners();
      },
    );
  }
}