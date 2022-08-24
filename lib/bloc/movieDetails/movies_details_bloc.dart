import 'package:app_movies/bloc/movieDetails/movies_details_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/movie_details_repository.dart';
import 'movies_details_state.dart';

class MovieDetailsBloc extends Bloc<MoviesDetailsEvent, MoviesDetailsState> {
  final MovieDetailsRepository _repository;
  final String id;

  MovieDetailsBloc(this._repository, this.id) : super(MoviesDetailsLoadingState()) {
    on<MoviesDetailsEvent>((event, emit) async {

      emit(MoviesDetailsLoadingState());
      try{
        final model = await _repository.getDiscoverMovies(id: id);
        emit(MoviesDetailsLoadedState(model));
      }catch (e) {
        emit(MoviesDetailsErrorState(e.toString()));
      }
    });


  }
}
