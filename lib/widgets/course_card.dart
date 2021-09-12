import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gc_app/models/course.dart';
import 'package:gc_app/screens/details/details_screen.dart';

class CourseCard extends StatelessWidget {
  final Course? course;
  const CourseCard({Key? key, this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedColor: Colors.transparent,
      closedElevation: 0,
      openElevation: 0,
      closedBuilder: (context, action) => buildcoursecard(context),
      openBuilder: (context, action) => DetailsScreen(course: course),
    );
  }

  Stack buildcoursecard(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            color: Colors.black,
            width: MediaQuery.of(context).size.width / 1.7,
            height: MediaQuery.of(context).size.height / 3,
            child: Image(
              image: AssetImage(
                  "assets/images/building.png"), //image of the course
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 18,
          bottom: 20,
          child: Stack(
            children: [
              Container(
                decoration: new BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 80,
                width: MediaQuery.of(context).size.width / 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Grow your 3D skills", //title
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.solidClock,
                            size: 10,
                            color: Theme.of(context).accentColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Text(
                              "Duration: 3hr 40min", //course duration
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: 25,
                          ),
                          Container(
                            height: 20,
                            width: 40,
                            decoration: new BoxDecoration(
                              color:
                                  Theme.of(context).hintColor.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  FontAwesomeIcons.solidHeart,
                                  size: 10,
                                  color: Theme.of(context).accentColor,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 0),
                                  child: Text(
                                    "300", //course likes
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
        // height: 100,
      ],
    );
  }
}
