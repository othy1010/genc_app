import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gc_app/widgets/avatar_widget.dart';
import 'package:gc_app/widgets/big_rounded_rect.dart';
import 'package:gc_app/widgets/course_card.dart';
import 'package:gc_app/widgets/rounded_rectangle.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final User? _user = context.watch<User?>();
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  AvateIcon(),
                  RoundedRect(),
                ],
              ),
              // SizedBox(
              //   height: 20,
              // ),
              Stack(
                children: [
                  Image(
                    image: AssetImage("assets/images/architecte.png"),
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 40,
                    left: 130,
                    child: Transform.rotate(
                      angle: -pi / 23,
                      child: SizedBox(
                        height: 60,
                        width: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello,",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Theme.of(context).hintColor)),
                            Flexible(
                              child: RichText(
                                overflow: TextOverflow.clip,
                                strutStyle: StrutStyle(fontSize: 10),
                                text: TextSpan(
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                      color: Colors.black),
                                  text: (_user!.displayName ?? "Anonymous"),
                                ),
                              ),
                            ),
                            Text(
                              "Time for work !",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 12,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 5,
                        ),
                        child: BigRoundedRect(),
                      ),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 5),
                        child: CourseCard(),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
