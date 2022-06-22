import 'package:dartz/dartz.dart';
import 'package:ditonton/domain/repositories/tv/tv_repository.dart';
import '../../../common/failure.dart';
import '../../entities/tv/tv.dart';

class GetTvRecommendations {
  final TvRepository repository;

  GetTvRecommendations(this.repository);

  Future<Either<Failure, List<Tv>>> call(id) async {
    return repository.getTvRecommendations(id);
  }
}