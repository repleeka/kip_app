import 'package:flutter/material.dart';

import 'courseCards/courseCards.dart';

///`HomeCards UI` this class will contain all the course cards.
class HomeCards extends StatefulWidget {
  @override
  _HomeCardsState createState() => _HomeCardsState();
}

class _HomeCardsState extends State<HomeCards> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(0),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Course(
            authorName: 'tungon dugi',
            courseTitle:
                '30 Days Flutter/Dart challenge for the beginners and the experts',
            isBestseller: true,
            imageLink: 'lib/assets/image/02.png',
            rating: '5.0',
          );
        });
  }
}
