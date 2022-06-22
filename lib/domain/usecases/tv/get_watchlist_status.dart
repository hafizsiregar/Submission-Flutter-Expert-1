import '../../repositories/tv/tv_repository.dart';

class GetWatchlistStatusTv {
  final TvRepository repository;

  GetWatchlistStatusTv(this.repository);

  Future<bool> call(int id) async {
    return repository.isAddedToWatchlist(id);
  }
}