import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../models/discoverMovies/results_discover_movies/discover_movies_models.dart';
import 'card_movies.dart';

class DiscoverMoviesWidget extends StatelessWidget {
  const DiscoverMoviesWidget(
      {Key? key,
      required this.model,
      required this.onPressedPrevious,
      required this.onPressedNext})
      : super(key: key);

  final DiscoverMoviesModels model;
  final void Function() onPressedPrevious;
  final void Function() onPressedNext;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemCount: model.results.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true, // The length Of the array
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 1,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
              ), // The size of the grid box
              itemBuilder: (context, index) => CardMovies(
                  dataMovie: model.results[index],
                  onPressed: () {
                    int id = model.results[index].id as int;
                    GoRouter.of(context).push('/movieDetails?idMovie=$id');
                  })),
        ),
        // BUTTO
        Container(
          color: Color.fromARGB(255, 255, 223, 54),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (model.page != 1)
                Expanded(
                  flex: 4,
                  child: ElevatedButton(
                    onPressed: onPressedPrevious,
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    child: const Text('Previous page'),
                  ),
                ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      shape: BoxShape.circle,
                      color: Colors.white10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          model.page.toString(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (model.page != model.total_pages)
                Expanded(
                  flex: 4,
                  child: ElevatedButton(
                    onPressed: onPressedNext,
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    child: const Text('Next page'),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
