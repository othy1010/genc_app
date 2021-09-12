import 'package:flutter/material.dart';
import 'package:gc_app/models/course.dart';

class DetailsScreen extends StatelessWidget {
  final Course? course;

  const DetailsScreen({Key? key, this.course}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        color: Colors.white,
        child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("sqwsqwqwdqw")),
      )),
    );
  }
}
