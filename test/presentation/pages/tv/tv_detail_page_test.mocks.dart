// Mocks generated by Mockito 5.0.8 from annotations
// in ditonton/test/presentation/pages/tv_detail_page_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i11;
import 'dart:ui' as _i12;

import 'package:ditonton/common/state_enum.dart' as _i9;
import 'package:ditonton/domain/entities/tv/tv.dart' as _i10;
import 'package:ditonton/domain/entities/tv/tv_detail.dart' as _i7;
import 'package:ditonton/domain/usecases/tv/get_tv_detail.dart' as _i2;
import 'package:ditonton/domain/usecases/tv/get_tv_recommendations.dart' as _i3;
import 'package:ditonton/domain/usecases/tv/get_watchlist_status.dart' as _i4;
import 'package:ditonton/domain/usecases/tv/remove_watchlist.dart' as _i6;
import 'package:ditonton/domain/usecases/tv/save_watchlist.dart' as _i5;
import 'package:ditonton/presentation/provider/tv/tv_detail_notifier.dart'
    as _i8;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeGetTVDetail extends _i1.Fake implements _i2.GetTvDetail {}

class _FakeGetTVRecommendations extends _i1.Fake
    implements _i3.GetTvRecommendations {}

class _FakeGetWatchListStatus extends _i1.Fake
    implements _i4.GetWatchlistStatusTv {}

class _FakeSaveWatchlist extends _i1.Fake implements _i5.SaveWatchlistTv {}

class _FakeRemoveWatchlist extends _i1.Fake implements _i6.RemoveWatchlistTv {}

class _FakeTVDetail extends _i1.Fake implements _i7.TvDetail {}

/// A class which mocks [TVDetailNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockTVDetailNotifier extends _i1.Mock
    implements _i8.TvDetailNotifier {
  MockTVDetailNotifier() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.GetTvDetail get getTvDetail =>
      (super.noSuchMethod(Invocation.getter(#getTVDetail),
          returnValue: _FakeGetTVDetail()) as _i2.GetTvDetail);
  @override
  _i3.GetTvRecommendations get getTvRecommendations =>
      (super.noSuchMethod(Invocation.getter(#getTVRecommendations),
              returnValue: _FakeGetTVRecommendations())
          as _i3.GetTvRecommendations);
  @override
  _i4.GetWatchlistStatusTv get getWatchListStatusTv =>
      (super.noSuchMethod(Invocation.getter(#getWatchListStatus),
          returnValue: _FakeGetWatchListStatus()) as _i4.GetWatchlistStatusTv);
  @override
  _i5.SaveWatchlistTv get saveWatchlistTv =>
      (super.noSuchMethod(Invocation.getter(#saveWatchlist),
          returnValue: _FakeSaveWatchlist()) as _i5.SaveWatchlistTv);
  @override
  _i6.RemoveWatchlistTv get removeWatchlistTv =>
      (super.noSuchMethod(Invocation.getter(#removeWatchlist),
          returnValue: _FakeRemoveWatchlist()) as _i6.RemoveWatchlistTv);
  @override
  _i7.TvDetail get tv => (super.noSuchMethod(Invocation.getter(#tv),
      returnValue: _FakeTVDetail()) as _i7.TvDetail);
  @override
  _i9.RequestState get tvState =>
      (super.noSuchMethod(Invocation.getter(#tvState),
          returnValue: _i9.RequestState.Empty) as _i9.RequestState);
  @override
  List<_i10.Tv> get tvRecommendations =>
      (super.noSuchMethod(Invocation.getter(#tvRecommendations),
          returnValue: <_i10.Tv>[]) as List<_i10.Tv>);
  @override
  _i9.RequestState get recommendationState =>
      (super.noSuchMethod(Invocation.getter(#recommendationState),
          returnValue: _i9.RequestState.Empty) as _i9.RequestState);
  @override
  String get message =>
      (super.noSuchMethod(Invocation.getter(#message), returnValue: '')
          as String);
  @override
  bool get isAddedToWatchlist =>
      (super.noSuchMethod(Invocation.getter(#isAddedToWatchlist),
          returnValue: false) as bool);
  @override
  String get watchlistMessage =>
      (super.noSuchMethod(Invocation.getter(#watchlistMessage), returnValue: '')
          as String);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  _i11.Future<void> fetchTvDetail(int? id) =>
      (super.noSuchMethod(Invocation.method(#fetchTVDetail, [id]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i11.Future<void>);
  @override
  _i11.Future<void> addWatchlist(_i7.TvDetail? tv) =>
      (super.noSuchMethod(Invocation.method(#addWatchlist, [tv]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i11.Future<void>);
  @override
  _i11.Future<void> removeFromWatchlist(_i7.TvDetail? tv) =>
      (super.noSuchMethod(Invocation.method(#removeFromWatchlist, [tv]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i11.Future<void>);
  @override
  _i11.Future<void> loadWatchlistStatus(int? id) =>
      (super.noSuchMethod(Invocation.method(#loadWatchlistStatus, [id]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i11.Future<void>);
  @override
  void addListener(_i12.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i12.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
}
