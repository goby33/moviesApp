// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoviesModels _$MoviesModelsFromJson(Map<String, dynamic> json) => MoviesModels(
      json['adult'] as bool,
      json['backdrop_path'] as String,
      (json['genre_ids'] as List<dynamic>).map((e) => e as int).toList(),
      json['id'] as int,
      json['original_language'] as String,
      json['overview'] as String,
      (json['popularity'] as num).toDouble(),
      json['poster_path'] as String,
      json['release_date'] as String,
      json['title'] as String,
      json['video'] as bool,
      (json['vote_average'] as num).toDouble(),
      json['vote_count'] as int,
      json['original_title'] as String,
    );
