import 'package:ditonton/domain/repositories/movie/movie_repository.dart';

class GetWatchListStatus {
  final MovieRepository repository;

  GetWatchListStatus(this.repository);

  Future<bool> call(int id) async {
    return repository.isAddedToWatchlist(id);
  }
}
