import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CourseCard extends StatefulWidget {
  const CourseCard({Key? key}) : super(key: key);

  @override
  _CourseCardState createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.width / 1.7,
          height: MediaQuery.of(context).size.height / 3,
          child: Image(
            image: AssetImage("assets/images/Linth.png"),
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
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                // border: Border.all(width: 40),
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
                      "Grow your 3D skills",
                      style: TextStyle(
                          color: Theme.of(context).textSelectionColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.solidClock,
                          size: 10,
                          color: Theme.of(context).textSelectionColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Text(
                            "Duration: 3hr 40min",
                            style: TextStyle(
                              fontSize: 10,
                              color: Theme.of(context).textSelectionColor,
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
                            color: Colors.redAccent[100]!.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.solidHeart,
                                size: 10,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Text(
                                  "300",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.red,
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
    ]);
  }
}
