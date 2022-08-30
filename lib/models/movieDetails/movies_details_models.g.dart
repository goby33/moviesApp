// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_details_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MoviesDetailsModels _$$_MoviesDetailsModelsFromJson(
        Map<String, dynamic> json) =>
    _$_MoviesDetailsModels(
      adult: json['adult'] as bool,
      backdrop_path: json['backdrop_path'] as String,
      belongs_to_collection: BelongsToCollectionModels.fromJson(
          json['belongs_to_collection'] as Map<String, dynamic>),
      budget: json['budget'] as int,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => GenresModels.fromJson(e as Map<String, dynamic>))
          .toList(),
      homepage: json['homepage'] as String,
      id: json['id'] as int,
      imdb_id: json['imdb_id'] as String,
      original_language: json['original_language'] as String,
      original_title: json['original_title'] as String,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      poster_path: json['poster_path'] as String,
      production_companies: (json['production_companies'] as List<dynamic>)
          .map((e) =>
              ProductionCompaniesModels.fromJson(e as Map<String, dynamic>))
          .toList(),
      production_countries: (json['production_countries'] as List<dynamic>)
          .map((e) =>
              ProductionCountriesModels.fromJson(e as Map<String, dynamic>))
          .toList(),
      release_date: json['release_date'] as String,
      revenue: json['revenue'] as int,
      runtime: json['runtime'] as int,
      spoken_languages: (json['spoken_languages'] as List<dynamic>)
          .map((e) => SpokenLanguagesModels.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
      tagline: json['tagline'] as String,
      title: json['title'] as String,
      video: json['video'] as bool,
      vote_average: json['vote_average'] as num,
      vote_count: json['vote_count'] as num,
    );

Map<String, dynamic> _$$_MoviesDetailsModelsToJson(
        _$_MoviesDetailsModels instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdrop_path,
      'belongs_to_collection': instance.belongs_to_collection,
      'budget': instance.budget,
      'genres': instance.genres,
      'homepage': instance.homepage,
      'id': instance.id,
      'imdb_id': instance.imdb_id,
      'original_language': instance.original_language,
      'original_title': instance.original_title,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.poster_path,
      'production_companies': instance.production_companies,
      'production_countries': instance.production_countries,
      'release_date': instance.release_date,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'spoken_languages': instance.spoken_languages,
      'status': instance.status,
      'tagline': instance.tagline,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.vote_average,
      'vote_count': instance.vote_count,
    };

_$_GenresModels _$$_GenresModelsFromJson(Map<String, dynamic> json) =>
    _$_GenresModels(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_GenresModelsToJson(_$_GenresModels instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_BelongsToCollectionModels _$$_BelongsToCollectionModelsFromJson(
        Map<String, dynamic> json) =>
    _$_BelongsToCollectionModels(
      id: json['id'] as int,
      name: json['name'] as String,
      poster_path: json['poster_path'] as String,
      backdrop_path: json['backdrop_path'] as String,
    );

Map<String, dynamic> _$$_BelongsToCollectionModelsToJson(
        _$_BelongsToCollectionModels instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'poster_path': instance.poster_path,
      'backdrop_path': instance.backdrop_path,
    };

_$_ProductionCompaniesModels _$$_ProductionCompaniesModelsFromJson(
        Map<String, dynamic> json) =>
    _$_ProductionCompaniesModels(
      id: json['id'] as int,
      logo_path: json['logo_path'] as String?,
      name: json['name'] as String,
      origin_country: json['origin_country'] as String,
    );

Map<String, dynamic> _$$_ProductionCompaniesModelsToJson(
        _$_ProductionCompaniesModels instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo_path': instance.logo_path,
      'name': instance.name,
      'origin_country': instance.origin_country,
    };

_$_ProductionCountriesModels _$$_ProductionCountriesModelsFromJson(
        Map<String, dynamic> json) =>
    _$_ProductionCountriesModels(
      iso_3166_1: json['iso_3166_1'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_ProductionCountriesModelsToJson(
        _$_ProductionCountriesModels instance) =>
    <String, dynamic>{
      'iso_3166_1': instance.iso_3166_1,
      'name': instance.name,
    };

_$_SpokenLanguagesModels _$$_SpokenLanguagesModelsFromJson(
        Map<String, dynamic> json) =>
    _$_SpokenLanguagesModels(
      english_name: json['english_name'] as String,
      iso_639_1: json['iso_639_1'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_SpokenLanguagesModelsToJson(
        _$_SpokenLanguagesModels instance) =>
    <String, dynamic>{
      'english_name': instance.english_name,
      'iso_639_1': instance.iso_639_1,
      'name': instance.name,
    };
