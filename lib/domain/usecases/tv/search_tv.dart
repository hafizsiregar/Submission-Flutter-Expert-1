import 'package:dartz/dartz.dart';
import '../../../common/failure.dart';
import '../../entities/tv/tv.dart';
import '../../repositories/tv/tv_repository.dart';

class SearchTv {
  final TvRepository repository;

  SearchTv(this.repository);

  Future<Either<Failure, List<Tv>>> call(String query) {
    return repository.searchTv(query);
  }
}