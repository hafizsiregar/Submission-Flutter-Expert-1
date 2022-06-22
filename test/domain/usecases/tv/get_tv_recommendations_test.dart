import 'package:dartz/dartz.dart';
import 'package:ditonton/domain/entities/tv/tv.dart';
import 'package:ditonton/domain/usecases/tv/get_tv_recommendations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../helpers/tv/test_helper.mocks_tv.dart';

void main() {
  late GetTvRecommendations usecase;
  late MockTvRepository mockTVRepository;

  setUp(() {
    mockTVRepository = MockTvRepository();
    usecase = GetTvRecommendations(mockTVRepository);
  });

  final tId = 1;
  final tTVs = <Tv>[];

  test('should get list of movie recommendations from the repository',
      () async {
    // arrange
    when(mockTVRepository.getTvRecommendations(tId))
        .thenAnswer((_) async => Right(tTVs));
    // act
    final result = await usecase.call(tId);
    // assert
    expect(result, Right(tTVs));
  });
}
