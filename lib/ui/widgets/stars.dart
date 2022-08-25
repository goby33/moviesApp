import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  Stars({ required this.vote,  Key? key}) : super(key: key);

  final num vote;

  @override
  Widget build(BuildContext context) {
    int i = vote.toInt();
    num delta = (vote - i);
    return Row(
      children: [
        //Text(i.toString()),
        for (var n = 0; n < i; n++)
          Icon(
            Icons.star,
            color: Colors.pink,
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        if (delta != 0)
          Icon(
            Icons.star_half_outlined,
            color: Colors.pink,
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
      ],
    );
  }
}
