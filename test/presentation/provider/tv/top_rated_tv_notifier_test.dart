import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv/tv.dart';
import 'package:ditonton/domain/usecases/tv/get_top_rated_tv.dart';
import 'package:ditonton/presentation/provider/tv/top_rated_tv_notifier.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'tv_list_notifier_test.mocks.dart';

@GenerateMocks([GetTopRatedTv])
void main() {
  late MockGetTopRatedTv mockGetTopRatedTV;
  late TopRatedTvNotifier notifier;
  late int listenerCallCount;

  setUp(() {
    listenerCallCount = 0;
    mockGetTopRatedTV = MockGetTopRatedTv();
    notifier = TopRatedTvNotifier(getTopRatedTv: mockGetTopRatedTV)
      ..addListener(() {
        listenerCallCount++;
      });
  });

  final tTV = Tv(
    backdropPath: 'backdropPath',
    genreIds: [1, 2, 3],
    id: 1,
    original_name: 'originalTitle',
    overview: 'overview',
    popularity: 1,
    poster_path: 'posterPath',
    first_air_date:  'releaseDate',
    name : 'title',
    voteAverage: 1,
    original_language: 'EN',
    voteCount: 1,
  );

  final tTVList = <Tv>[tTV];

  test('should change state to loading when usecase is called', () async {
    // arrange
    when(mockGetTopRatedTV.call())
        .thenAnswer((_) async => Right(tTVList));
    // act
    notifier.fetchTopRatedTv();
    // assert
    expect(notifier.state, RequestState.Loading);
    expect(listenerCallCount, 1);
  });

  test('should change tvs data when data is gotten successfully', () async {
    // arrange
    when(mockGetTopRatedTV.call())
        .thenAnswer((_) async => Right(tTVList));
    // act
    await notifier.fetchTopRatedTv();
    // assert
    expect(notifier.state, RequestState.Loaded);
    expect(notifier.tv, tTVList);
    expect(listenerCallCount, 2);
  });

  test('should return error when data is unsuccessful', () async {
    // arrange
    when(mockGetTopRatedTV.call())
        .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
    // act
    await notifier.fetchTopRatedTv();
    // assert
    expect(notifier.state, RequestState.Error);
    expect(notifier.message, 'Server Failure');
    expect(listenerCallCount, 2);
  });
}
