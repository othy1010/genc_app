import 'package:flutter/material.dart';
import 'package:gc_app/services/authentication_service.dart';
import 'package:provider/provider.dart';

class AvateIcon extends StatelessWidget {
  const AvateIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await context.read<AuthenticationService>().signOut();
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
            height: 50,
            width: 50,
            decoration: new BoxDecoration(
              color: Theme.of(context).accentColor,
              shape: BoxShape.circle,
            ),
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(
                    Icons.person,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Positioned(
                  top: 3,
                  left: 3,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: new BoxDecoration(
                      color: Theme.of(context).hintColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
