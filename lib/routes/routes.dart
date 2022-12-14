import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../repository/discover_movies_repository.dart';
import '../repository/movie_details_repository.dart';
import '../ui/filmDetails/film_details.dart';
import '../ui/home/home_screen.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) {
        return RepositoryProvider(
          create: (_) => DiscoverMoviesRepository(),
          child: const MaterialApp(
            home: homeScreen(),
          ),
        );
      }),
  GoRoute(
      path: '/movieDetails',
      name: 'movieDetails',
      builder: (context, state) {
        final idMovie = state.queryParams['idMovie'];
        return RepositoryProvider(
          create: (_) => MovieDetailsRepository(),
          child:  MaterialApp(
            home: FilmDetails(idMovie: idMovie!),
          ),
        );

      }),
], initialLocation: '/', debugLogDiagnostics: true);
