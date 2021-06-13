import 'package:flutter/material.dart';

import 'courseCards/courseCards.dart';

///`HomeCards UI` this class will contain all the course cards.
class HomeCards extends StatefulWidget {
  @override
  _HomeCardsState createState() => _HomeCardsState();
}

class _HomeCardsState extends State<HomeCards> {
  final List<String> courseList = [
    'Jubin Nautiyal Live - Tho Aagaye hum',
    "Justin Bieber - Anyone",
    "Bebe Rexha - Meant to be (feat. Florida Gergia Line) [Official Music Video]",
    "Chris Brown - Questions (Official Video)",
    "Justin Bieber - Peaches ft. Daniel Caeser, Giveon",
    "Nick Santino - Love, love, love",
    "Nick Santino - Keep on going",
    "Nick Santino - Same Jokes(1989)",
    "Nikhil D'Souza - People (Hindi reprise)",
    "Post Malone - Congratulations ft. Quavo (lyrics)",
    "Taba Chake - Blush Live at Livingroom"
  ];
  final List<String> imagePathList = [
    'lib/assets/image/01.png',
    'lib/assets/image/02.png',
    'lib/assets/image/03.png',
    'lib/assets/image/04.png',
    'lib/assets/image/05.png',
    'lib/assets/image/06.png',
    'lib/assets/image/07.png',
    'lib/assets/image/08.png',
    'lib/assets/image/09.png',
    'lib/assets/image/10.png',
    'lib/assets/image/11.png',
  ];
  final List<String> authorNameList = [
    'Jubin Nautiyal',
    'Justin Bieber',
    'Bebe Rexha',
    'Chris Brown',
    'Justin Bieber',
    'Nick Santino',
    'Nick Santino',
    'Nick Santino',
    "Nikhil D'Souza",
    "Post Malone",
    "Taba Chake",
  ];
  final List<String> courseDescriptionList = [
    "Tho aagaye hum by Jubin Nautiyal Live at Utrakhand",
    "Anyone a song by Justin Bieber official Audio",
    "Meant to be a song by Bebe Rexha, it's a beautiful song.",
    "Chris Brown's Questions song was my sister's favourite song until she...",
    "Justin Bieber Peaches is one of the songs perfect for parties..",
    "Nick santino's Love love love song is a good song.",
    "Another beautiful song by Nick Santinor...",
    "Same jokes (1989) is a nostalgic song...",
    "Nkil D'Souza's Pople(Hindi) is also available in English language.",
    "Post Malone is a Cool Living White Board kind a guy.",
    'Achi Chake saktae. Doimukh ka launda.',
  ];
  final List<bool> isBestSellerList = [
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
  ];
  final List<String> courseImagePathList = [];
  final List<double> ratingList = [
    4.0,
    4.0,
    4.8,
    4.5,
    4.3,
    4.6,
    4.6,
    4.8,
    4.8,
    5.0,
    4.9,
  ];
  final List<double> courseAmountList = [];
  final List<String> videoAssetPathList = [
    'lib/videos/01.mp4',
    'lib/videos/02.mp4',
    'lib/videos/03.mp4',
    'lib/videos/04.mp4',
    'lib/videos/05.mp4',
    'lib/videos/06.mp4',
    'lib/videos/07.mp4',
    'lib/videos/08.mp4',
    'lib/videos/09.mp4',
    'lib/videos/10.mp4',
    'lib/videos/11.mp4',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(0),
        shrinkWrap: true,
        itemCount: courseList.length,
        itemBuilder: (context, index) {
          return Course(
            courseTitle: courseList[index],
            courseDescripttion: courseDescriptionList[index],
            authorName: authorNameList[index],
            isBestseller: isBestSellerList[index],
            imageLink: imagePathList[index],
            rating: ratingList[index],
            courseAmount: 45000.0,
            courseLanguage: 'English',
            videoAssetPath: videoAssetPathList[index],
          );
        });
  }
}
