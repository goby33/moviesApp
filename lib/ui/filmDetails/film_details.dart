import 'package:app_movies/ui/filmDetails/widget/main_movie_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../bloc/movieDetails/movies_details_bloc.dart';
import '../../bloc/movieDetails/movies_details_event.dart';
import '../../bloc/movieDetails/movies_details_state.dart';
import '../../repository/movie_details_repository.dart';

class FilmDetails extends StatelessWidget {
  FilmDetails({Key? key, required this.idMovie}) : super(key: key);

  final String idMovie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text("Movies Details"),
        centerTitle: true,
        leading: BackButton(
            color: Colors.black,
            onPressed: () => GoRouter.of(context).push('/')),
      ),
      body:BlocProvider<MovieDetailsBloc>(
        create: (context) =>
        MovieDetailsBloc(RepositoryProvider.of<MovieDetailsRepository>(context), idMovie)
          ..add(LoadMoviesDetailsEvent()),
        child: Center(
          child: BlocBuilder<MovieDetailsBloc, MoviesDetailsState>(builder: (context, state) {
            if (state is MoviesDetailsErrorState) {
              return Text(
                state.message,
                style: const TextStyle(fontSize: 16, color: Colors.red),
              );
            } else if (state is MoviesDetailsLoadedState) {
              return Expanded(
                child: MainMovieDetails(models: state.model)
              );
            }
            return const CircularProgressIndicator();
          }),
        ),
      )

    );
  }
}
