// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_movies_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiscoverMoviesModels _$$_DiscoverMoviesModelsFromJson(
        Map<String, dynamic> json) =>
    _$_DiscoverMoviesModels(
      page: json['page'] as num,
      results: (json['results'] as List<dynamic>)
          .map((e) => ResultsDiscoverMovies.fromJson(e as Map<String, dynamic>))
          .toList(),
      total_pages: json['total_pages'] as num,
      total_results: json['total_results'] as num,
    );

Map<String, dynamic> _$$_DiscoverMoviesModelsToJson(
        _$_DiscoverMoviesModels instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.total_pages,
      'total_results': instance.total_results,
    };

_$_ResultsDiscoverMovies _$$_ResultsDiscoverMoviesFromJson(
        Map<String, dynamic> json) =>
    _$_ResultsDiscoverMovies(
      adult: json['adult'] as bool,
      backdrop_path: json['backdrop_path'] as String,
      genre_ids:
          (json['genre_ids'] as List<dynamic>).map((e) => e as num).toList(),
      id: json['id'] as num,
      original_language: json['original_language'] as String,
      original_title: json['original_title'] as String,
      overview: json['overview'] as String,
      popularity: json['popularity'] as num,
      poster_path: json['poster_path'] as String,
      release_date: json['release_date'] as String,
      title: json['title'] as String,
      video: json['video'] as bool,
      vote_average: json['vote_average'] as num,
      vote_count: json['vote_count'] as num,
    );

Map<String, dynamic> _$$_ResultsDiscoverMoviesToJson(
        _$_ResultsDiscoverMovies instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdrop_path,
      'genre_ids': instance.genre_ids,
      'id': instance.id,
      'original_language': instance.original_language,
      'original_title': instance.original_title,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.poster_path,
      'release_date': instance.release_date,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.vote_average,
      'vote_count': instance.vote_count,
    };
