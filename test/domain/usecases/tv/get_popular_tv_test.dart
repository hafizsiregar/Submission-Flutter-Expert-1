import 'package:dartz/dartz.dart';
import 'package:ditonton/domain/entities/tv/tv.dart';
import 'package:ditonton/domain/usecases/tv/get_popular_tv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../helpers/tv/test_helper.mocks_tv.dart';

void main() {
  late GetPopularTv usecase;
  late MockTvRepository mockTVRpository;

  setUp(() {
    mockTVRpository = MockTvRepository();
    usecase = GetPopularTv(mockTVRpository);
  });

  final tTV = <Tv>[];

  group('GetPopularTV Tests', () {
    group('execute', () {
      test(
          'should get list of TV from the repository when execute function is called',
          () async {
        // arrange
        when(mockTVRpository.getPopularTv())
            .thenAnswer((_) async => Right(tTV));
        // act
        final result = await usecase.call();
        // assert
        expect(result, Right(tTV));
      });
    });
  });
}
