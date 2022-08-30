import 'package:freezed_annotation/freezed_annotation.dart';

part 'discover_movies_models.g.dart';
part 'discover_movies_models.freezed.dart';



@Freezed()
class DiscoverMoviesModels with _$DiscoverMoviesModels {
  const factory DiscoverMoviesModels({
    required num page,
    required List<ResultsDiscoverMovies> results,
    required num total_pages,
    required num total_results,
  }) = _DiscoverMoviesModels;

  factory DiscoverMoviesModels.fromJson(Map<String, Object?> json) =>
      _$DiscoverMoviesModelsFromJson(json);
}

@Freezed()
class ResultsDiscoverMovies with _$ResultsDiscoverMovies {
  const factory ResultsDiscoverMovies({
    required bool adult,
    required String backdrop_path,
    required List<num> genre_ids,
    required num id,
    required String original_language,
    required String original_title,
    required String overview,
    required num popularity,
    required String poster_path,
    required String release_date,
    required String title,
    required bool video,
    required num vote_average,
    required num vote_count,
  }) = _ResultsDiscoverMovies;

  factory ResultsDiscoverMovies.fromJson(Map<String, Object?> json) =>
      _$ResultsDiscoverMoviesFromJson(json);
}
