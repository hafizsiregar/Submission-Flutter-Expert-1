import 'package:dartz/dartz.dart';
import 'package:ditonton/domain/entities/tv/tv.dart';

import '../../../common/failure.dart';
import '../../repositories/tv/tv_repository.dart';

class GetWatchlistTv {
  final TvRepository repository;

  GetWatchlistTv(this.repository);

  Future<Either<Failure, List<Tv>>> call() {
    return repository.getWatchlistTv();
  }
}