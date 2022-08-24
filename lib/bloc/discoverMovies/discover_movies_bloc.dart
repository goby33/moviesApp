import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/discover_movies_repository.dart';
import 'discover_movies_event.dart';
import 'discover_movies_state.dart';

class DiscoverMoviesBloc extends Bloc<DiscoverMoviesEvent, DiscoverMoviesState> {
  final DiscoverMoviesRepository _repository;

  late  int page = 1;

  DiscoverMoviesBloc(this._repository) : super(DiscoverMoviesLoadingState()) {
    on<DiscoverMoviesEvent>((event, emit) async {
      if (event is NextPageDiscoverMoviesEvent) {
        page += 1;
      }
      if (event is PreviousPageDiscoverMoviesEvent) {
        page -= 1;
        (page <= 0) ? page = 1: null;
      }
      emit(DiscoverMoviesLoadingState());
      try{
        final model = await _repository.getDiscoverMovies(page.toString());
        emit(DiscoverMoviesLoadedState(model));
      }catch (e) {
        emit(DiscoverMoviesErrorState(e.toString()));
      }
    });


  }
}
