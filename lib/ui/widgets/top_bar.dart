import 'package:flutter/material.dart';

import '../home/discover_movies_screen.dart';

class TopBar extends StatelessWidget {
  TopBar({Key? key, this.WidgetChild}) : super(key: key);

  final  WidgetChild;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Stack(
      children: [
        Container(
          height: size.height * .35,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 223, 54),
            image: DecorationImage(
              image: NetworkImage(
                  "https://thumbs.dreamstime.com/b/watch-film-cinema-popcorn-clapperboard-yellow-background-top-view-movie-premiere-concept-153931954.jpg"),
            ),
          ),
        ),
        SafeArea(
          child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Movies App",
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: EdgeInsets.only(top: 160, bottom: 30, left: 20, right: 20),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none
                    ),
                  ),
                ),
                //Contenu
                Expanded(child: DiscoverMoviesScreen())
                //WidgetChild
              ],
            ),
          ),
      ],
    );
  }
}
