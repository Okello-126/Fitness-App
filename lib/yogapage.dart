import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class YogaPage extends StatelessWidget {
  const YogaPage({Key key}) : super(key: key);

  Widget _buildExercises(String day, String pose, String time, String image) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Material(
        elevation: 5,
        child: Container(
          height: 119,
          color: Color(0xffECECEC),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 7),
                    child: Text(
                      'DAY $day',
                      style: GoogleFonts.doHyeon(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      pose,
                      style: GoogleFonts.dekko(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                        ),
                        SizedBox(width: 15),
                        Text(
                          time,
                          style: GoogleFonts.dekko(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.network(image),
              )
            ],
          ),
        ),
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
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/yoga.png?alt=media&token=5bea6a1e-1295-48e7-a2cd-1ba208a576d1'),
              )),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 4, top: 15),
                child: Text(
                  'YOGA',
                  style: GoogleFonts.doHyeon(
                      fontWeight: FontWeight.normal, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 4, right: 10),
                child: Text(
                  'Yoga\'s incorporation of meditation and breathing can help improve a person\'s mental well-being. Regular yoga practice creates mental clarity and calmness; increases body awareness; relieves chronic stress patterns; relaxes the mind; centers attention; and sharpens concentration.',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.dekko(
                      fontWeight: FontWeight.normal, fontSize: 18),
                ),
              ),
              SizedBox(height:10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      color: Color(0xff2C1559),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Text(
                          'BEGINNER',
                          style: GoogleFonts.doHyeon(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Card(
                          elevation: 5,
                          child: Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Text(
                                'INTERMEDIATE',
                                style: GoogleFonts.doHyeon(
                                    color: Color(0xff5B5B5B),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 5,
                          child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/premium-badge.png?alt=media&token=c12efd3a-658a-4344-8c29-ca6035081d52'),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Card(
                          elevation: 5,
                          child: Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Text(
                                'ADVANCED',
                                style: GoogleFonts.doHyeon(
                                    color: Color(0xff5B5B5B),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 5,
                          child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/premium-badge.png?alt=media&token=c12efd3a-658a-4344-8c29-ca6035081d52'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, top: 10),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      child: Row(
                        children: [
                          Icon(FontAwesome5.dumbbell, size: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 7),
                            child: Text(
                              '10 exercises',
                              style: GoogleFonts.doHyeon(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            child: Row(
                              children: [
                                Icon(Icons.access_alarm),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 7),
                                  child: Text(
                                    '120 minutes',
                                    style: GoogleFonts.doHyeon(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              _buildExercises('1', 'Easy pose', '20 minutes',
                  'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/yoga%201.png?alt=media&token=c1842ff3-4471-4a58-bd97-44c136999aec'),
              _buildExercises('2', 'Bow pose', '20 minutes',
                  'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/yoga%202.png?alt=media&token=b9a2116a-994c-4238-bd37-53cfb997d531'),
              _buildExercises('3', 'Cobra pose', '15 minutes',
                  'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/yoga%203.png?alt=media&token=a34aee0e-bb8f-446b-96fb-cea427fbf9fa'),
              _buildExercises('4', 'Boat pose', '12 minutes',
                  'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/yoga%204.png?alt=media&token=779223c4-6b30-476d-91c6-e4430fac0f48'),
              _buildExercises('5', 'Warrior I pose', '15 minutes',
                  'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/Asset%203.png?alt=media&token=bf3d1bef-49a5-41f6-a71d-d3cacc17b188'),
              _buildExercises('6', 'Warrior II pose', '20 minutes',
                  'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/Asset%207.png?alt=media&token=3d875191-ce9e-41c6-af36-dd980fc6bbf1'),
              _buildExercises('7', 'Low Lunge pose', '12 minutes',
                  'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/Asset%206.png?alt=media&token=e7b26fdf-9635-414c-b5ad-e5a129bbae2b'),
              _buildExercises('8', 'Lord of The Dance pose', '20 minutes',
                  'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/Asset%205.png?alt=media&token=cc7f4981-79da-43c7-8ced-a94a50de49e7'),
              _buildExercises('9', 'Bow pose', '12 minutes',
                  'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/Asset%20211.png?alt=media&token=73c428f1-d3ae-46f1-b1db-aa60d9db17d6'),
              _buildExercises('10', 'Warrior III pose', '15 minutes',
                  'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/Asset%204.png?alt=media&token=2e5297b6-b76e-4c04-bd28-8f88e76d942b'),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
