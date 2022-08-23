
import 'package:json_annotation/json_annotation.dart';

part 'movies_models.g.dart';

@JsonSerializable(createToJson: false)
class MoviesModels {
  final bool adult;
  final String backdrop_path;
  final List<int> genre_ids;
  final int id;
  final String original_language;
  final String original_title;
  final String overview;
  final double popularity;
  final String poster_path;
  final String release_date;
  final String title;
  final bool video;
  final double vote_average;
  final int vote_count;

  const MoviesModels(
      this.adult,
      this.backdrop_path,
      this.genre_ids,
      this.id,
      this.original_language,
      this.overview,
      this.popularity,
      this.poster_path,
      this.release_date,
      this.title,
      this.video,
      this.vote_average,
      this.vote_count,
      this.original_title);


  factory MoviesModels.fromJson(Map<String, dynamic> json) => _$MoviesModelsFromJson(json);
}
