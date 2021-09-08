import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BigRoundedRect extends StatelessWidget {
  const BigRoundedRect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 100,
        width: 150,
        // color: Colors.amber,
        decoration: new BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(40),
          // border: Border.all(width: 40),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                decoration: new BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  FontAwesomeIcons.bitcoin,
                  size: 30,
                ),
              ),
            ),
            Text(
              "Module 1",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            // SizedBox(
            //   width: ,
            // )
          ],
        ),
      ),
    );
  }
}
