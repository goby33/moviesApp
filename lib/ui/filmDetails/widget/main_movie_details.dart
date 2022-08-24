import 'package:app_movies/models/movieDetails/movies_details_models.dart';
import 'package:flutter/material.dart';

class MainMovieDetails extends StatelessWidget {
  MainMovieDetails({Key? key, required this.models}) : super(key: key);

  final MoviesDetailsModels models;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(40.0),
          child: Image.network(
            'https://image.tmdb.org/t/p/original' +
                models.posterPath.toString(),
            height: 400,
            fit: BoxFit.fill,
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
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 30, bottom: 20),
          child: Text(
            models.originalTitle.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            "Date : " + models.releaseDate.toString(),
            style: TextStyle(fontSize: 15),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            "Language : " + models.originalLanguage.toString(),
            style: TextStyle(fontSize: 15),
          ),
        ),
        Row(
          children: [
            for (var i = 0; i < 3; i = i + 1)
              Icon(
                Icons.star,
                color: Colors.pink,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: Text(
            models.overview.toString(),
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}
