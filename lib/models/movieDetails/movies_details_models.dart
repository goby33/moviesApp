import 'package:freezed_annotation/freezed_annotation.dart';

part  'movies_details_models.g.dart';
part  'movies_details_models.freezed.dart';

@Freezed()
class MoviesDetailsModels with _$MoviesDetailsModels {
  const factory MoviesDetailsModels({
    required bool adult,
    required String backdrop_path,
    required BelongsToCollectionModels belongs_to_collection,
    required int budget,
    required List<GenresModels> genres,
    required String homepage,
    required int id,
    required String imdb_id,
    required String original_language,
    required String original_title,
    required String overview,
    required double popularity,
    required String poster_path,
    required List<ProductionCompaniesModels> production_companies,
    required List<ProductionCountriesModels> production_countries,
    required String release_date,
    required int revenue,
    required int runtime,
    required List<SpokenLanguagesModels> spoken_languages,
    required String status,
    required String tagline,
    required String title,
    required bool video,
    required num vote_average,
    required num vote_count,
  }) = _MoviesDetailsModels;

  factory MoviesDetailsModels.fromJson(Map<String, Object?> json) =>
      _$MoviesDetailsModelsFromJson(json);
}

@Freezed()
class GenresModels with _$GenresModels {
  const factory GenresModels({
    required int id,
    required String name,
  }) = _GenresModels;
  factory GenresModels.fromJson(Map<String, Object?> json) =>
      _$GenresModelsFromJson(json);
}

@Freezed()
class BelongsToCollectionModels with _$BelongsToCollectionModels {
  const factory BelongsToCollectionModels({
    required int id,
    required String name,
    required String poster_path,
    required String backdrop_path,
  }) = _BelongsToCollectionModels;

  factory BelongsToCollectionModels.fromJson(Map<String, Object?> json) =>
      _$BelongsToCollectionModelsFromJson(json);
}

@Freezed()
class ProductionCompaniesModels with _$ProductionCompaniesModels {
  const factory ProductionCompaniesModels({
    required int id,
    required String? logo_path,
    required String name,
    required String origin_country,
  }) = _ProductionCompaniesModels;

  factory ProductionCompaniesModels.fromJson(Map<String, Object?> json) =>
      _$ProductionCompaniesModelsFromJson(json);
}

@Freezed()
class ProductionCountriesModels with _$ProductionCountriesModels {
  const factory ProductionCountriesModels({
    required String iso_3166_1,
    required String name,
  }) = _ProductionCountriesModels;

  factory ProductionCountriesModels.fromJson(Map<String, Object?> json) =>
      _$ProductionCountriesModelsFromJson(json);
}

@Freezed()
class SpokenLanguagesModels with _$SpokenLanguagesModels {
  const factory SpokenLanguagesModels({
    required String english_name,
    required String iso_639_1,
    required String name,
  }) = _SpokenLanguagesModels;

  factory SpokenLanguagesModels.fromJson(Map<String, Object?> json) =>
      _$SpokenLanguagesModelsFromJson(json);
}
