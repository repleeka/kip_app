import 'package:flutter/material.dart';
import 'package:kip_app/screens/cards/courseCards/insideCourse.dart';

///`Course Card UI`
class Course extends StatelessWidget {
  final String imageLink;
  final String courseTitle;
  final String authorName;
  final String rating;
  final bool isBestseller;
  Course(
      {required this.courseTitle,
      required this.authorName,
      required this.imageLink,
      required this.rating,
      required this.isBestseller});

  // Widget _cards() {
  //   return Card(
  //     child: Column(
  //       mainAxisSize: MainAxisSize.min,
  //       children: <Widget>[
  //         const ListTile(
  //           // leading: Icon(Icons.album, size: 45),
  //           title: Text('Sonu Nigam'),
  //           subtitle: Text('Best of Sonu Nigam Song'),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Course Cards tapped");
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => InsideCourse()));
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image(
                  image: AssetImage(imageLink),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: courseTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Espera-Bold',
                      fontSize: 25,
                    ),
                    children: [
                      TextSpan(
                        text: '\nDr.${authorName.toUpperCase()}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star, color: Colors.grey),
                Text(
                  '$rating (123,385)',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Rs.450.00',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            isBestseller
                ? Container(
                    // padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.amber[200],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: kToolbarHeight - 10,
                    width: kTextTabBarHeight + 60,
                    child: Center(
                        child: Text(
                      'Bestseller',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
