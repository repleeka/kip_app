import 'package:flutter/material.dart';

class InsideCourse extends StatefulWidget {
  @override
  _InsideCourseState createState() => _InsideCourseState();
}

class _InsideCourseState extends State<InsideCourse> {
  late ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      controller: _scrollController,
      headerSliverBuilder: (context, isScrolled) => [
        SliverAppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: Colors.grey,
                size: 30,
              ),
            ),
          ],
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.grey,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ],
      body: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ///[Course Title]
                "The Complete 2021 Python Web Development Bootcamp with Django",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Segoe',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                ///[Course Details]
                "Become a full-stack Python Django Developer with just one course. HTML,CSS,JavaScript,Django,MongoDB and more!",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Segoe',
                ),
              ),
              SizedBox(height: 10),
              Container(
                ///[BestSeller]
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
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    ///[Rating]
                    '4.7', style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.grey),
                ],
              ),
              Text(
                ///[Number of students and ratings]
                ' (123,385 ratings) 645,125 students',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: 'Created by: '),
                      TextSpan(
                        text: 'Dr.Tungon Prashad',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ]),
              ),
              SizedBox(height: 10),
              Text(
                ///[Language of the Course]
                'Language: English',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Segoe',
                ),
              ),
              SizedBox(height: 10),
              Container(
                ///[Intro Video Here]
                ///You can make a widget for the video player and price and
                ///the buynow and add to cart widgets.
                color: Colors.black,

                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image(
                    image: AssetImage('lib/assets/image/02.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                ///[Amount of the Course]
                '\u20B9 450',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Segoe',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                ///[Buy Now and Add to Cart Buttons]
                ///although Column is not required here I have added for simplicity.
                children: [
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => print('Buying now'),
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                          fontFamily: 'Segoe',
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => print('Added to cart'),
                      child: Text(
                        'Add to cart',
                        style: TextStyle(
                          color: Colors.teal,
                          fontFamily: 'Segoe',
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        elevation: 0.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Card(
                elevation: 0.0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'This Course includes',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Segoe',
                        fontSize: 30,
                      ),
                    ),
                    ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.all(0),
                      leading: Icon(
                        Icons.video_collection,
                        // size: 30,
                      ),
                      title: Text('55 total hours on-demand video'),
                    ),
                    ListTile(
                      // dense: true,
                      contentPadding: EdgeInsets.all(0),
                      leading: Icon(
                        Icons.bolt_outlined,
                        // size: 30,
                      ),
                      title: Text('12 Quizzes'),
                    ),
                    ListTile(
                      // dense: true,
                      contentPadding: EdgeInsets.all(0),
                      leading: Icon(
                        Icons.insert_drive_file_sharp,
                        // size: 30,
                      ),
                      title: Text('Support Files'),
                    ),
                    ListTile(
                      // dense: true,
                      contentPadding: EdgeInsets.all(0),
                      leading: Icon(
                        Icons.menu_book,
                        // size: 30,
                      ),
                      title: Text('80 Articles'),
                    ),
                    ListTile(
                      // dense: true,
                      contentPadding: EdgeInsets.all(0),
                      leading: Icon(
                        Icons.code,
                        // size: 30,
                      ),
                      title: Text('8 Coding Excercises'),
                    ),
                    ListTile(
                      // dense: true,
                      contentPadding: EdgeInsets.all(0),
                      leading: Icon(
                        Icons.open_in_full,
                        // size: 30,
                      ),
                      title: Text('Lifetime Access'),
                    ),
                    ListTile(
                      // dense: true,
                      contentPadding: EdgeInsets.all(0),
                      leading: Icon(
                        Icons.phone_android,
                        // size: 30,
                      ),
                      title: Text('Access on mobile, desktop, and TV'),
                    ),
                    ListTile(
                      // dense: true,
                      contentPadding: EdgeInsets.all(0),
                      leading: Icon(
                        Icons.card_membership_outlined,
                        size: 30,
                      ),
                      title: Text('Certificate of Completion'),
                    ),
                  ],
                ),
              ),
              Text(
                ///[What you'll Learn Tab]
                "What you'll learn: ",
                style: TextStyle(
                  fontFamily: 'Segoe',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.check),
                      Expanded(
                        child: Text(
                          'Be able to build ANY webservices using Django',
                          style: TextStyle(fontFamily: 'Segoe', fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.check),
                      Expanded(
                        child: Text(
                          'Craft a portfolio of websites to apply for junior developer jobs.',
                          style: TextStyle(fontFamily: 'Segoe', fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.check),
                      Expanded(
                        child: Text(
                          'Build fully-fledged website backends and web apps for your startup or business',
                          style: TextStyle(fontFamily: 'Segoe', fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.check),
                      Expanded(
                        child: Text(
                          'Work as a freelance Python Django developer',
                          style: TextStyle(fontFamily: 'Segoe', fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.check),
                      Expanded(
                        child: Text(
                          'Master backend development with Django',
                          style: TextStyle(fontFamily: 'Segoe', fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.check),
                      Expanded(
                        child: Text(
                          'Learn the latest frameworks and technologies, including JavaScript ES6, Django REST API, MongoDB, and many more',
                          style: TextStyle(fontFamily: 'Segoe', fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.check),
                      Expanded(
                        child: Text(
                          'Learn professional developer bst practices.',
                          style: TextStyle(fontFamily: 'Segoe', fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Description',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Segoe',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '''Welcome to the Complete 2021 Python Web Development Bootcamp with Django, the only course you need to learn to code and become a full-stack Python/Django developer. 
                With over 12,000 ratings and a 4.8 average, my Python Development course is one of the HIGHEST RATED courses in the history of KIP! ❤❤❤❤❤''',
                style: TextStyle(
                  fontFamily: 'Segoe',
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10),
              Text(
                ///[Requirements]
                "Requirements",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: 'Segoe'),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.circle),
                      Expanded(
                        child: Text(
                          "No programming experience needed. I'll teach you everything you need to know",
                          style: TextStyle(
                            fontFamily: 'Segoe',
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.circle),
                      Expanded(
                        child: Text(
                          "A Mac or PC computer with access to the internet",
                          style: TextStyle(
                            fontFamily: 'Segoe',
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.circle),
                      Expanded(
                        child: Text(
                          "No Paid software required - all websites will be created with Atom (which is free)",
                          style: TextStyle(
                            fontFamily: 'Segoe',
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.circle),
                      Expanded(
                        child: Text(
                          "I'll walk you through, step-by-step how to get all the software installed and set up",
                          style: TextStyle(
                            fontFamily: 'Segoe',
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
