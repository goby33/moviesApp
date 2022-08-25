import 'package:app_movies/ui/widgets/top_bar.dart';
import 'package:flutter/material.dart';

import 'discover_movies_screen.dart';



class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return new Scaffold(
      body: TopBar(
        WidgetChild: DiscoverMoviesScreen()
      ),
        bottomNavigationBar: Container(
          color: Color.fromARGB(255, 255, 223, 54),
          height: 15,
        )
    );
  }
}




