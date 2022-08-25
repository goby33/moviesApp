import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/discoverMovies/discover_movies_bloc.dart';
import '../../bloc/discoverMovies/discover_movies_event.dart';
import '../../bloc/discoverMovies/discover_movies_state.dart';
import '../../repository/discover_movies_repository.dart';
import 'widgets/discover_movies_widget.dart';

class DiscoverMoviesScreen extends StatelessWidget {
  DiscoverMoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider<DiscoverMoviesBloc>(
      create: (context) =>
      DiscoverMoviesBloc(RepositoryProvider.of<DiscoverMoviesRepository>(context))
        ..add(LoadDiscoverMoviesEvent()),
      child: Center(
        child: BlocBuilder<DiscoverMoviesBloc, DiscoverMoviesState>(builder: (context, state) {

            if (state is DiscoverMoviesErrorState) {
              return Text(
                state.message,
                style: const TextStyle(fontSize: 16, color: Colors.red),
              );
            } else if (state is DiscoverMoviesLoadedState) {
              return Expanded(
                child: DiscoverMoviesWidget(
                  model: state.model,
                  onPressedPrevious: () =>
                      context.read<DiscoverMoviesBloc>().add(PreviousPageDiscoverMoviesEvent()),
                  onPressedNext: () =>
                      context.read<DiscoverMoviesBloc>().add(NextPageDiscoverMoviesEvent())
              ),
              );
            }
            return const CircularProgressIndicator();
          }),
        ),
      );
  }
}
