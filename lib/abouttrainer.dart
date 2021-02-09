import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutTrainer extends StatelessWidget {
  const AboutTrainer({Key key}) : super(key: key);

  Widget _buildCourses(
      String course, String trainer, String rating, String image) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 4),
      child: Stack(
        children: [
          Container(
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.network(image,
                    width: 300, height: 215, fit: BoxFit.cover),
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: 52,
                width: 300,
                decoration: BoxDecoration(
                    color: Color(0xff615E54).withOpacity(0.8),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        width: 260,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(course,
                              style: GoogleFonts.dekko(
                                  color: Colors.white, fontSize: 18)),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 3,
                      child: Container(
                        width: 50,
                        height: 30,
                        color: Colors.orange,
                        child: Center(
                          child: Text(rating,
                              style: GoogleFonts.doHyeon(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 310,
                child: Stack(
                  children: [
                    Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/trainer%201.png?alt=media&token=52081d9d-950c-4eb5-a320-3716de62ea35',
                        height: 283,
                        fit: BoxFit.cover),
                    Positioned(
                      bottom: 0,
                      left: 6,
                      child: Material(
                        elevation: 3,
                        child: Container(
                          width: 400,
                          padding: EdgeInsets.only(top: 5, bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Zoey Welbeck'.toUpperCase(),
                                  style: GoogleFonts.doppioOne(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.network(
                                      'https://img.icons8.com/material/32/000000/domain--v1.png'),
                                  Icon(Entypo.twitter,
                                      color: Colors.blue, size: 32),
                                  Image.network(
                                      'https://img.icons8.com/fluent/32/000000/instagram-new.png'),
                                  SizedBox(width: 5)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 60,
                      right: 20,
                      child: Icon(Icons.bookmark_border),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 15),
                child: Text(
                  'About Me',
                  style: GoogleFonts.doppioOne(
                      fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 5, right: 10),
                child: Text(
                  'Zoey Welbeck is an internationally celebrated yoga teacher who has been featured in over 50 different print and broadcast media including The Today Show. An active humanitarian, Seane is the national yoga ambassador for YouthAIDS and the cofounder of Off The Mat, Into the World®, a leadership training program. The author of several DVDs, Seane has been studying yoga for more than 20 years. She teaches workshops, conferences,and retreats throughout the U.S. and abroad.',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.dekko(
                      fontWeight: FontWeight.normal, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 15),
                child: Text(
                  'My Courses',
                  style: GoogleFonts.doppioOne(
                      fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 215,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCourses(
                        "Meal plans for weight loss",
                        'Barbara Morgan',
                        '4.8',
                        'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/food.png?alt=media&token=d1b2312c-0112-4531-bad4-5e7cec471c69'),
                    _buildCourses(
                        'Conquer Anxiety with Yoga',
                        'Meghan Wilson',
                        '4.7',
                        'https://th.bing.com/th/id/OIP.hr3I8E4ug2n7MAuq2d-qWwHaEK?pid=Api&w=1920&h=1080&rs=1'),
                    _buildCourses(
                        'Intermittent Fasting Basics',
                        'Cathy McOwen',
                        '4.9',
                        'https://th.bing.com/th/id/OIP.YbSTLxqMwRTD5nX8CZt8xAHaFj?w=243&h=182&c=7&o=5&pid=1.7'),
                    _buildCourses(
                        'Transcedtal Meditation Guide',
                        'Amanda Jackson',
                        '4.8',
                        'https://th.bing.com/th?id=OIF.OrVGl%2bR07oWJCibSrW5hLg&w=345&h=163&c=7&o=5&pid=1.7'),
                  ],
                ),
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
