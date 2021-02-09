import 'package:fitness_app_demo/courses.dart';
import 'package:fitness_app_demo/trainers.dart';
import 'package:fitness_app_demo/yogapage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import 'abouttrainer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildCategories(String title, String image) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 150,
            decoration: BoxDecoration(
                color: Color(0xff2C1559),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(image),
            ),
          ),
          Text(
            title,
            style: GoogleFonts.doHyeon(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      ),
    );
  }

  Widget _buildTrainer(String name, String image) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
              image,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          name,
          style: GoogleFonts.doHyeon(
              color: Color(0xff5D4903),
              fontWeight: FontWeight.normal,
              fontSize: 20),
        ),
      ],
    );
  }

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
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(course,
                          style: GoogleFonts.dekko(
                              color: Colors.white, fontSize: 18)),
                    ),
                    Positioned(
                      bottom: 1,
                      left: 25,
                      child: Text('by ' + trainer,
                          style: GoogleFonts.dekko(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          'SuperWoman',
          style: GoogleFonts.doHyeon(
              fontWeight: FontWeight.normal, color: Color(0xff5B5B5B)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 4, top: 10),
              child: Text(
                'Workout Categories',
                style: GoogleFonts.doHyeon(
                    fontWeight: FontWeight.normal, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => YogaPage()));
                    },
                    child: _buildCategories('YOGA',
                        'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/categories%201.png?alt=media&token=258c7e3f-cad2-4eb8-94ee-8e9a5f7ead87'),
                  ),
                  _buildCategories('MEDITATION',
                      'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/categories%202.png?alt=media&token=4f5f7c72-b3c1-4af1-b1dd-427563508042'),
                  _buildCategories('GYM',
                      'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/categories%203.png?alt=media&token=62b300c0-2247-4284-9cae-f511f14836ab'),
                  _buildCategories('SWIMMING',
                      'https://img.icons8.com/ios-glyphs/128/000000/marathon-swimming.png'),
                ],
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCategories('CYCLING',
                      'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/categories%204.png?alt=media&token=6baef166-fa42-4dfc-bfc9-d5d05a6210d0'),
                  _buildCategories('WEIGHT LOSS',
                      'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/categories%205.png?alt=media&token=44a26034-7a28-43db-9a26-5411264bda8a'),
                  _buildCategories('BOXING',
                      'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/categories%206.png?alt=media&token=bdcd9f90-db2e-4219-8aae-04df40094335'),
                  _buildCategories('BALLET',
                      'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/categories%207.png?alt=media&token=16d1fd6b-4454-4fcd-bc1c-dcfaf4628505'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 4, top: 15),
              child: Row(
                children: [
                  Text(
                    'Featured Trainers',
                    style: GoogleFonts.doHyeon(
                        fontWeight: FontWeight.normal, fontSize: 20),
                  ),
                  SizedBox(width: 150),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder:(context)=>Trainers()
                      ));
                    },
                    child: Container(
                      height: 40,
                      child: Row(
                        children: [
                          Text(
                            'See All',
                            style: GoogleFonts.doHyeon(
                                color: Color(0xff6E6E6E),
                                fontWeight: FontWeight.normal,
                                fontSize: 20),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 4.5, left: 10),
                            child: Icon(FontAwesome5.chevron_right,
                                size: 15, color: Color(0xff6E6E6E)),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutTrainer()));
                    },
                    child: _buildTrainer('Zoey',
                        'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/Image21.png?alt=media&token=7b6a3272-8648-4b28-80ff-9ad1b3049133'),
                  ),
                  _buildTrainer('Mikey',
                      'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/trainer%202.png?alt=media&token=9d8f3b28-a582-409e-aa8e-d9a83c7293f1'),
                  _buildTrainer('Wendy',
                      'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/trainer%203.jpg?alt=media&token=6042aa6d-69df-4bda-8d70-a6aa79d47b0a'),
                  _buildTrainer('Jane',
                      'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/trainer%204.png?alt=media&token=728a3aef-e303-4bce-9a72-e600c209a420'),
                  _buildTrainer('Khil',
                      'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/Image.png?alt=media&token=5f090a4d-3caf-4f61-b332-6ccd195901ad'),
                  /*    _buildTrainer(name, image),
                  _buildTrainer(name, image), */
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 4, top: 15),
              child: Row(
                children: [
                  Text(
                    'Courses For You',
                    style: GoogleFonts.doHyeon(
                        fontWeight: FontWeight.normal, fontSize: 20),
                  ),
                  SizedBox(width: 160),
                  Container(
                    height: 40,
                    child: Row(
                      children: [
                        Text(
                          'See All',
                          style: GoogleFonts.doHyeon(
                              color: Color(0xff6E6E6E),
                              fontWeight: FontWeight.normal,
                              fontSize: 20),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 4.5, left: 10),
                          child: Icon(FontAwesome5.chevron_right,
                              size: 15, color: Color(0xff6E6E6E)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 215,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesPage()));
                    },
                    child: _buildCourses(
                        "Yoga for Absolute Beginners",
                        'Barbara Morgan',
                        '4.8',
                        'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/course%204.png?alt=media&token=9dfd806b-431d-4b3d-9104-e70de6d2ba3b'),
                  ),
                  _buildCourses(
                      '20 Ballet Moves in 20 days',
                      'Meghan Wilson',
                      '4.7',
                      'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/course%205.png?alt=media&token=f024714b-325a-42a0-aee2-57303c060edf'),
                  _buildCourses(
                      'Boxing for Fitness & Self-Defense',
                      'Cathy McOwen',
                      '4.9',
                      'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/course%202.png?alt=media&token=7dbdc186-4bda-452c-82cb-79bab02ab6e8'),
                  _buildCourses(
                      'Swimming Step by Step',
                      'Amanda Jackson',
                      '4.8',
                      'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/course%201.png?alt=media&token=01056040-9e71-42a3-9d31-2616043ed54d'),
                  _buildCourses(
                      'Basic Ballerina Guide',
                      'Lisa J. Lincoln',
                      '5.0',
                      'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/c980936d77192ee236ac93f385273895.jpg?alt=media&token=c17d75f5-ef76-4f6a-bd12-f1d6970b53c9')
                ],
              ),
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
