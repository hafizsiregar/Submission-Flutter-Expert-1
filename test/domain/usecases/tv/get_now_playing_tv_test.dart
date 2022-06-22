import 'package:dartz/dartz.dart';
import 'package:ditonton/domain/entities/tv/tv.dart';
import 'package:ditonton/domain/usecases/tv/get_now_playing_tv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../helpers/tv/test_helper.mocks_tv.dart';

void main() {
  late GetNowPlayingTv usecase;
  late MockTvRepository mockTVRepository;

  setUp(() {
    mockTVRepository = MockTvRepository();
    usecase = GetNowPlayingTv(mockTVRepository);
  });

  final tTV = <Tv>[];

  test('should get list of TV from the repository', () async {
    // arrange
    when(mockTVRepository.getNowPlayingTv())
        .thenAnswer((_) async => Right(tTV));
    // act
    final result = await usecase.call();
    // assert
    expect(result, Right(tTV));
  });
}
