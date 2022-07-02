import 'package:ditonton/domain/entities/tv/tv_detail.dart';
import 'package:equatable/equatable.dart';
import '../../../domain/entities/tv/tv.dart';

class TvTable extends Equatable {
  final int id;
  final String? name;
  final String? posterPath;
  final String? overview;

  TvTable({
    required this.id,
    required this.name,
    required this.posterPath,
    required this.overview,
  });

  factory TvTable.fromEntity(TvDetail tv) => TvTable(
        id: tv.id,
        name: tv.name,
        posterPath: tv.posterPath,
        overview: tv.overview,
      );

  factory TvTable.fromMap(Map<String, dynamic> json) => TvTable(
        id: json["id"],
        name: json["name"],
        posterPath: json["posterPath"],
        overview: json["overview"],
      );   

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "posterPath": posterPath,
        "overview": overview,
      };

  Tv toEntity() => Tv.watchlist(
        id: id,
        name: name,
        poster_path: posterPath,
        overview: overview,
      );

  @override
   List<Object?> get props => [id, name, posterPath, overview];           
}