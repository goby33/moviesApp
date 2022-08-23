import 'package:json_annotation/json_annotation.dart';

import 'movies_models.dart';
part 'discover_movies_models.g.dart';

@JsonSerializable(createToJson: false)
class DiscoverMoviesModels{
  final int page;
  final List<MoviesModels> results;

  DiscoverMoviesModels(
      this.page,
      this.results
      );
  factory DiscoverMoviesModels.fromJson(Map<String, dynamic> json) => _$DiscoverMoviesModelsFromJson(json);
}
