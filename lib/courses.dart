import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class CoursesPage extends StatefulWidget {
  CoursesPage({Key key}) : super(key: key);

  @override
  _CoursesPageState createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/course%204.png?alt=media&token=9dfd806b-431d-4b3d-9104-e70de6d2ba3b',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover),
                Positioned(
                  bottom: 100,
                  left: 50,
                  child: Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xffECECEC).withOpacity(0.9),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  'Wishlist',
                                  style: GoogleFonts.dekko(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 24),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(
                                  FontAwesome.heart_empty,
                                  size: 26,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 40),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xffECECEC).withOpacity(0.9),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  'Preview',
                                  style: GoogleFonts.dekko(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 24),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child:
                                    Icon(Icons.play_circle_outline, size: 30),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                'YOGA FOR ABSOLUTE BEGINNERS',
                style: GoogleFonts.doppioOne(
                    fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Text(
                'Yoga, when practised regularly, have the potential to help you become more mindful so that your life in the present, most of the time, which leads to increased happiness and optimal health and thereby reducing anxiety and stress, and this is the guide to get you started. ',
                textAlign: TextAlign.justify,
                style: GoogleFonts.dekko(
                    fontWeight: FontWeight.normal, fontSize: 18),
              ),
            ),
            SizedBox(height: 10),
            Container(
                child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Duration ',
                    style: GoogleFonts.hammersmithOne(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(width: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: Text(
                    '10 hours',
                    style: GoogleFonts.doHyeon(
                        color: Color(0xff5D4903),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ],
            )),
            Container(
                child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Rating     ',
                    style: GoogleFonts.hammersmithOne(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(width: 53),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    '4.8',
                    style: GoogleFonts.doHyeon(
                        color: Color(0xff5D4903),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ],
            )),
            SizedBox(height: 5),
            Container(
                child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Learners   ',
                    style: GoogleFonts.hammersmithOne(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(width: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    '50',
                    style: GoogleFonts.doHyeon(
                        color: Color(0xff5D4903),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ],
            )),
            Container(
                child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 7),
                  child: Text(
                    'Price       ',
                    style: GoogleFonts.hammersmithOne(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(width: 55),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    '\$ 48',
                    style: GoogleFonts.doHyeon(
                        color: Color(0xff5D4903),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                SizedBox(width: 50),
                Stack(
                  children: [
                    Card(
                      elevation: 2,
                      child: Container(
                        color: Color(0xffF8C822),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5),
                          child: Text(
                            'BUY NOW',
                            style: GoogleFonts.doHyeon(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    /*  Positioned(
                      
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/premium-badge.png?alt=media&token=c12efd3a-658a-4344-8c29-ca6035081d52'),
                    ), */
                  ],
                ),
              ],
            )),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Trainer :   ',
                style: GoogleFonts.hammersmithOne(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(
                        'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/Image21.png?alt=media&token=7b6a3272-8648-4b28-80ff-9ad1b3049133'),
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      SizedBox(height: 60),
                      Text(
                        'Zoey Welbeck',
                        style: GoogleFonts.dekko(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        'Wellness Counselor',
                        style: GoogleFonts.dekko(
                            fontWeight: FontWeight.normal, fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Trainer Rating :',
                        style: GoogleFonts.dekko(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '4.4',
                        style: GoogleFonts.doHyeon(
                            fontWeight: FontWeight.normal, fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Courses :',
                        style: GoogleFonts.dekko(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '3',
                        style: GoogleFonts.doHyeon(
                            fontWeight: FontWeight.normal, fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Reviews',
                    style: GoogleFonts.hammersmithOne(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(width: 120),
                Card(
                  elevation: 2,
                  child: Container(
                    color: Color(0xffA6A270),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 5),
                      child: Text(
                        'ADD A REVIEW',
                        style: GoogleFonts.doHyeon(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10)
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xffF1EFEF),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/Image%203.png?alt=media&token=5bab35e4-96c0-41ae-a0a2-9609a29e10dc'),
                          ),
                          SizedBox(width: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'J.J Taylor',
                                style: GoogleFonts.doHyeon(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Row(
                                children: [
                                  Image.network(
                                      'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/Asset%201.png?alt=media&token=6989180b-8232-49a1-ada1-438f8715958d'),
                                  SizedBox(width: 50),
                                  Text(
                                    '1 week ago',
                                    style: GoogleFonts.dekko(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Text(
                        'Yes of course, it gave me a deeper understanding of poses. It also offered me an opportunity to build a base of knowledge from the ground up.',
                        style: GoogleFonts.dekko(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 18),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xffF1EFEF),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/Image%204.png?alt=media&token=7b124778-a2c3-453e-a3f2-6a62667e4aa1'),
                          ),
                          SizedBox(width: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Miriam',
                                style: GoogleFonts.doHyeon(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Row(
                                children: [
                                  Image.network(
                                      'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/Asset%202.png?alt=media&token=e6d1adb7-5f0a-452f-a0f1-57835b97034c'),
                                  SizedBox(width: 50),
                                  Text(
                                    '2 weeks ago',
                                    style: GoogleFonts.dekko(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Text(
                        'The course was excellent and well-developed, and the instructor is really experienced and know well in the area of yoga.Definitely worth the time and money for the course.',
                        style: GoogleFonts.dekko(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 18),
                      ),
                    ],
                  )),
            ),
            SizedBox(height: 20)
          ],
        )),
      ),
    );
  }
}
