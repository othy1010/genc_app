import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gc_app/widgets/avatar_widget.dart';
import 'package:gc_app/widgets/big_rounded_rect.dart';
import 'package:gc_app/widgets/course_card.dart';
import 'package:gc_app/widgets/rounded_rectangle.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final User? _user = context.watch<User?>();
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
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
              Padding(
                padding: const EdgeInsets.only(top: 20),
                // child: RichText(
                //   text: TextSpan(
                //     style: TextStyle(color: Colors.black, fontSize: 50),
                //     children: const <TextSpan>[
                //       TextSpan(
                //           text: 'Hello,\n',
                //           style: TextStyle(fontWeight: FontWeight.bold)),
                //       TextSpan(text: context.watch<User?>().displayName),
                //     ],
                //   ),
                // ),
                // child:
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello,",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
                  Text(_user!.displayName ?? "Anonymous",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 25)),
                ],
              ),
              // SizedBox(height: 30),
              Container(
                color: Colors.black,
                height: 70,
                width: double.infinity,
              ),
              // SizedBox(height: 30),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: BigRoundedRect(),
                      ),
                    );
                  },
                ),
              ),
              // SizedBox(
              //   height: 30,
              // ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, bottom: 5),
                          child: CourseCard(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.black,
        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Categories",
            icon: Icon(Icons.grid_view),
          ),
          BottomNavigationBarItem(
            label: "My Account",
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
    );
  }
}
