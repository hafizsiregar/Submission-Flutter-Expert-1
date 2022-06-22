// Mocks generated by Mockito 5.0.8 from annotations
// in ditonton/test/presentation/provider/tv_detail_notifier_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:dartz/dartz.dart' as _i3;
import 'package:ditonton/common/failure.dart' as _i6;
import 'package:ditonton/domain/entities/tv/tv_detail.dart' as _i7;
import 'package:ditonton/domain/entities/tv/tv.dart' as _i9;
import 'package:ditonton/domain/usecases/tv/get_tv_detail.dart' as _i4;
import 'package:ditonton/domain/usecases/tv/get_tv_recommendations.dart' as _i8;
import 'package:ditonton/domain/usecases/tv/get_watchlist_status.dart' as _i10;
import 'package:ditonton/domain/usecases/tv/remove_watchlist.dart' as _i12;
import 'package:ditonton/domain/usecases/tv/save_watchlist.dart' as _i11;
import 'package:ditonton/domain/repositories/tv/tv_repository.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeTvRepository extends _i1.Fake implements _i2.TvRepository {}

class _FakeEither<L, R> extends _i1.Fake implements _i3.Either<L, R> {}

/// A class which mocks [GetTVDetail].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetTvDetail extends _i1.Mock implements _i4.GetTvDetail {
  MockGetTvDetail() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TvRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeTvRepository()) as _i2.TvRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, _i7.TvDetail>> call(int? id) =>
      (super.noSuchMethod(Invocation.method(#execute, [id]),
          returnValue: Future<_i3.Either<_i6.Failure, _i7.TvDetail>>.value(
              _FakeEither<_i6.Failure, _i7.TvDetail>())) as _i5
          .Future<_i3.Either<_i6.Failure, _i7.TvDetail>>);
}

/// A class which mocks [GetTVRecommendations].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetTvRecommendations extends _i1.Mock
    implements _i8.GetTvRecommendations {
  MockGetTvRecommendations() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TvRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeTvRepository()) as _i2.TvRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, List<_i9.Tv>>> call(dynamic id) =>
      (super.noSuchMethod(Invocation.method(#execute, [id]),
          returnValue: Future<_i3.Either<_i6.Failure, List<_i9.Tv>>>.value(
              _FakeEither<_i6.Failure, List<_i9.Tv>>())) as _i5
          .Future<_i3.Either<_i6.Failure, List<_i9.Tv>>>);
}

/// A class which mocks [GetWatchListStatus].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetWatchListStatus extends _i1.Mock
    implements _i10.GetWatchlistStatusTv {
  MockGetWatchListStatus() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TvRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeTvRepository()) as _i2.TvRepository);
  @override
  _i5.Future<bool> call(int? id) =>
      (super.noSuchMethod(Invocation.method(#execute, [id]),
          returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
}

/// A class which mocks [SaveWatchlist].
///
/// See the documentation for Mockito's code generation for more information.
class MockSaveWatchlist extends _i1.Mock implements _i11.SaveWatchlistTv {
  MockSaveWatchlist() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TvRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeTvRepository()) as _i2.TvRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, String>> execute(_i7.TvDetail? tv) =>
      (super.noSuchMethod(Invocation.method(#execute, [tv]),
              returnValue: Future<_i3.Either<_i6.Failure, String>>.value(
                  _FakeEither<_i6.Failure, String>()))
          as _i5.Future<_i3.Either<_i6.Failure, String>>);
}

/// A class which mocks [RemoveWatchlist].
///
/// See the documentation for Mockito's code generation for more information.
class MockRemoveWatchlist extends _i1.Mock implements _i12.RemoveWatchlistTv {
  MockRemoveWatchlist() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TvRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeTvRepository()) as _i2.TvRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, String>> call(_i7.TvDetail? tv) =>
      (super.noSuchMethod(Invocation.method(#execute, [tv]),
              returnValue: Future<_i3.Either<_i6.Failure, String>>.value(
                  _FakeEither<_i6.Failure, String>()))
          as _i5.Future<_i3.Either<_i6.Failure, String>>);
}
