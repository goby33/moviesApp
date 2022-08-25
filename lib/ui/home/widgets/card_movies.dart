import 'package:flutter/material.dart';

import '../../../models/discoverMovies/results.dart';
import '../../widgets/stars.dart';

class CardMovies extends StatelessWidget {
  CardMovies({
    Key? key,
    required this.onPressed,
    required this.dataMovie,
  }) : super(key: key);

  final Results dataMovie;
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
                      dataMovie.backdropPath.toString(),
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
              Padding(
                padding: EdgeInsets.only(top: 10, left: 20),
                child: Text(
                  dataMovie.title.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 20),
                child: Text(
                  textAlign: TextAlign.left,
                  dataMovie.releaseDate.toString(),
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Stars(vote: dataMovie.voteAverage!),
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
