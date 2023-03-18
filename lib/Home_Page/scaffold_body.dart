import 'package:flutter/material.dart';
import 'package:ngo_link/Home_Page/main_screen_home_start.dart';

class ScaffoldBody extends StatelessWidget {
  const ScaffoldBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
        Colors.blue.shade800,
        Colors.blue.shade600,
        Colors.blue.shade400,
        Colors.blue.shade200,
      ])),
      child: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: () => Scaffold.of(context).openDrawer(),
                      child: const Icon(
                        Icons.menu_rounded,
                        size: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Text(
                    'Home',
                    style: TextStyle(
                      fontFamily: "GTWalsheimPro",
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.notifications,
                    size: 28,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Container(
                padding: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        blurRadius: 5,
                        spreadRadius: 1.5,
                        offset: const Offset(0, 3),
                      )
                    ]),
                child: const TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    fontFamily: "Comfortaa",
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      colors: [
                        Colors.blue.shade100,
                        Colors.blue.shade50,
                      ],
                    ),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          spreadRadius: 1.0,
                          offset: Offset(2, 5))
                    ],
                    border: Border.all(color: Colors.blue.shade50),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(45),
                        topLeft: Radius.circular(45))),
                child: const SingleChildScrollView(
                  child: Padding(
                    //Scrollbar init
                    padding: EdgeInsets.all(30),
                    child: MainScreenHomeStart(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
