import 'package:app_movies/models/movieDetails/movies_details_models.dart';

abstract class MoviesDetailsState {}

class MoviesDetailsLoadingState extends MoviesDetailsState {}

class MoviesDetailsErrorState extends MoviesDetailsState {
  final String message;
  MoviesDetailsErrorState(this.message);
}

class MoviesDetailsLoadedState extends MoviesDetailsState {
  final MoviesDetailsModels model;
  MoviesDetailsLoadedState(this.model);
}
