



import '../models/discoverMovies/discover_movies_models.dart';

abstract class DiscoverMoviesState {}

class DiscoverMoviesLoadingState extends DiscoverMoviesState {}

class DiscoverMoviesErrorState extends DiscoverMoviesState {
  final String message;
  DiscoverMoviesErrorState(this.message);
}

class DiscoverMoviesLoadedState extends DiscoverMoviesState {
  final DiscoverMoviesModels model;
  DiscoverMoviesLoadedState(this.model);
}
