import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class FilmDetails extends StatelessWidget {
  FilmDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String original_title = "Fortress: Sniper's Eye";
    String poster_path = "/61J34xHVVdQHbJ4MSCWQo4e727v.jpg";
    String release_date = "2022-04-29";
    String original_language = "en";
    double vote_average = 5.9;
    String overview = "Weeks after the deadly assault on Fortress Camp, "
        "Robert makes a daring rescue to save Sasha, the widow of his old nemesis Balzary."
        " But back in the camp's command bunker, it appears Sasha may have devious plans of her own. As a new attack "
        "breaks out, Robert is confronted with a familiar face he thought he'd never see again…";

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text("Sample ppp"),
        centerTitle: true,
        leading: BackButton(
            color: Colors.black,
            onPressed: () => GoRouter.of(context).push('/')),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: Image.network(
              'https://image.tmdb.org/t/p/original' + poster_path,
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
              original_title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              "Date : " + release_date,
              style: TextStyle(fontSize: 15),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              "Language : " + original_language,
              style: TextStyle(fontSize: 15),
            ),
          ),
          Row(
            children: [
              for (var i = 0; i < vote_average; i = i + 1)
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
              overview,
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
