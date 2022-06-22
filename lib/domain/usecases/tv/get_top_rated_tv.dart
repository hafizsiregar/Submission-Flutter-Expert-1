import 'package:dartz/dartz.dart';
import 'package:ditonton/domain/repositories/tv/tv_repository.dart';
import '../../../common/failure.dart';
import '../../entities/tv/tv.dart';

class GetTopRatedTv {
  final TvRepository repository;

  GetTopRatedTv(this.repository);

  Future<Either<Failure, List<Tv>>> call() {
    return repository.getTopRatedTv();
  }
}