import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../models/discoverMovies/discover_movies_models.dart';
import 'card_movies.dart';

class DiscoverMoviesWidget extends StatelessWidget {
  DiscoverMoviesWidget(
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
        if (model.results!.isNotEmpty)
          Expanded(
            child:  GridView.builder(
                itemCount: model.results?.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,// The length Of the array
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 1,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                ), // The size of the grid box
                itemBuilder: (context, index) =>
                    CardMovies(
                        dataMovie: model.results![index],
                        onPressed: () {
                          GoRouter.of(context).push('/movieDetails');
                        }
                    )
            ),
          ),
        // BUTTO
        Container(
          child: Row(
            children: [
              ElevatedButton(
                onPressed: onPressedPrevious,
                child: const Text('Previous page'),
                style: ElevatedButton.styleFrom(primary: Colors.black),
              ),
              Text(model.page.toString()),
              if (model.page != 2)
                ElevatedButton(
                  onPressed: onPressedNext,
                  child: const Text('next page'),
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
