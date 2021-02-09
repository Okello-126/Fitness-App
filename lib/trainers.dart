import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Trainers extends StatefulWidget {
  Trainers({Key key}) : super(key: key);

  @override
  _TrainersState createState() => _TrainersState();
}

class _TrainersState extends State<Trainers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          //   leading: Icon(FontAwesome5.chevron_left, color: Colors.black),
         leadingWidth: 200,
          leading: Padding(
            padding: const EdgeInsets.only(top:13,left:10),
            child: Text(
              'All Trainers',
              style: GoogleFonts.doppioOne(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 22),
            ),
          ),
          actions: [
            Icon(Icons.search, color: Colors.black),
            SizedBox(width: 20)
          ],
        ),
        body: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          itemCount: 9,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(top: 10, left: 4, right: 4),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        child: Image.network(images[index])),
                    Positioned(
                        bottom: 3,
                        right: 3,
                        child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Text(numberofcourses[index],
                                style: GoogleFonts.dekko(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))))
                  ],
                ),
                SizedBox(height: 5),
                Text(names[index], style: GoogleFonts.doHyeon(fontSize: 20))
              ],
            ),
          ),
          staggeredTileBuilder: (index) => StaggeredTile.fit(1),
        ));
  }
}

List<String> images = [
  'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/a%20new%201.png?alt=media&token=9ba656b0-0e26-46ec-87d0-0e631714b211',
  'https://firebasestorage.googleapis.com/v0/b/bookstore-demo-v1.appspot.com/o/cac438301dcd1f51a4c12746a228e842.png?alt=media&token=bf927175-f3a9-4905-b536-ab65b73b98e1',
  'https://images.pexels.com/photos/936075/pexels-photo-936075.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://th.bing.com/th/id/OIP.gDBlSrA1OmY7R4d-xMy13gHaFS?pid=Api&w=1200&h=856&rs=1',
  'https://images.pexels.com/photos/3746275/pexels-photo-3746275.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/1181391/pexels-photo-1181391.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/4553639/pexels-photo-4553639.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/3094215/pexels-photo-3094215.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
];

List<String> numberofcourses = [
  '6 courses',
  '2 courses',
  '5 courses',
  '7 courses',
  '2 courses',
  '3 courses',
  '2 courses','4 courses','1 course'
];

List<String> names = [
  'Michael W.',
  'Samantha B.',
  'Rachel J.',
  'Wendy M.',
  'Rachel k.',
  'Alicia A.',
  'Christopher W.','Myriam E.','Halisa Y.'
];
