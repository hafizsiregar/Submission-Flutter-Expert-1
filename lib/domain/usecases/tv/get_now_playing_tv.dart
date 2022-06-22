import 'package:dartz/dartz.dart';
import '../../../common/failure.dart';
import '../../entities/tv/tv.dart';
import '../../repositories/tv/tv_repository.dart';

class GetNowPlayingTv {
  final TvRepository repository;

  GetNowPlayingTv(this.repository);

  Future<Either<Failure, List<Tv>>> call() {
    return repository.getNowPlayingTv();
  }
}