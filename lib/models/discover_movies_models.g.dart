// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_movies_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiscoverMoviesModels _$DiscoverMoviesModelsFromJson(
        Map<String, dynamic> json) =>
    DiscoverMoviesModels(
      json['page'] as int,
      (json['results'] as List<dynamic>)
          .map((e) => MoviesModels.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
