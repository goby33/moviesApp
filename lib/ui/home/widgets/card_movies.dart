import 'package:app_movies/models/movies_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CardMovies extends StatelessWidget {
  CardMovies({
    Key? key,
    required this.dataMovie,
    required this.onPressed,
  }) : super(key: key);

  final MoviesModels dataMovie;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 100,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            children: [
              Image.network(
                  'https://image.tmdb.org/t/p/original' +
                      dataMovie.backdrop_path,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              }),
              Text(dataMovie.title),
              Text("ppp"),
              Text("ppp"),
              Text("ppp"),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
