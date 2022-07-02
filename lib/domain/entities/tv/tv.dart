import 'package:equatable/equatable.dart';

class Tv extends Equatable {
  String? backdropPath;
  String? first_air_date;
  List<int>? genreIds;
  int id;
  String? original_name;
  String? name;
  String? original_language;
  String? overview;
  double? popularity;
  String? poster_path;
  double? voteAverage;
  int? voteCount;

  Tv.watchlist({
    required this.id,
    required this.overview,
    required this.poster_path,
    required this.name,
  });

  Tv({
    required this.backdropPath,
    required this.first_air_date,
    required this.genreIds,
    required this.id,
    required this.original_name,
    required this.name,
    required this.original_language,
    required this.overview,
    required this.popularity,
    required this.poster_path,
    required this.voteAverage,
    required this.voteCount,
  });

  @override
  List<Object?> get props => [
        backdropPath,
        first_air_date,
        genreIds,
        id,
        original_name,
        name,
        original_language,
        overview,
        popularity,
        poster_path,
        voteAverage,
        voteCount
      ];
}