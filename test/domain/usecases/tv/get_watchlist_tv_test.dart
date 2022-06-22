import 'package:dartz/dartz.dart';
import 'package:ditonton/domain/usecases/tv/get_watchlist_tv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../dummy_data/tv/dummy_objects_tv.dart';
import '../../../helpers/tv/test_helper.mocks_tv.dart';

void main() {
  late GetWatchlistTv usecase;
  late MockTvRepository mockTVRepository;

  setUp(() {
    mockTVRepository = MockTvRepository();
    usecase = GetWatchlistTv(mockTVRepository);
  });

  test('should get list of TV from the repository', () async {
    // arrange
    when(mockTVRepository.getWatchlistTv())
        .thenAnswer((_) async => Right(testTvList));
    // act
    final result = await usecase.call();
    // assert
    expect(result, Right(testTvList));
  });
}
