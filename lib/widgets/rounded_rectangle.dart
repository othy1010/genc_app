import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundedRect extends StatelessWidget {
  const RoundedRect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 50,
        width: 120,
        // color: Colors.amber,
        decoration: new BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(30),
          // border: Border.all(width: 40),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
              decoration: new BoxDecoration(
                color: Theme.of(context).accentColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                FontAwesomeIcons.userGraduate,
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "1000 \npoints",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ),
    );
  }
}
