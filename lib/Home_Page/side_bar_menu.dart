import 'package:flutter/material.dart';
import 'package:ngo_link/Home_Page/about_us.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({Key? key}) : super(key: key);

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: [
              // SizedBox(height: 300,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.person,size: 100,),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            shape: BoxShape.circle
                        ),
                      ),
                    ),
                    Text("Vikas Yadav",style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.5)),),
                    SizedBox(height: 10,),
                    Text("+91 8128275205",style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(0.5)),),
                  ],
                ),
              ),

              Divider(color: Colors.black.withOpacity(0.5),),

              TextButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutUs()));
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "sidebar_icons/about_us.png",
                          height: 25,
                          width: 25,
                        ),
                        SizedBox(width: 25,),
                        Text("About Us",
                        style: TextStyle(
                          fontSize: 20,
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: (){},
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "sidebar_icons/event.png",
                          height: 25,
                          width: 25,
                        ),
                        SizedBox(width: 25,),
                        Text("Event",
                          style: TextStyle(
                            fontSize: 20,
                          ),),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: (){},
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "sidebar_icons/issues.png",
                          height: 25,
                          width: 25,
                        ),
                        SizedBox(width: 25,),
                        Text("Issues",
                          style: TextStyle(
                            fontSize: 20,
                          ),),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: (){},
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "sidebar_icons/donate.png",
                          height: 25,
                          width: 25,
                        ),
                        SizedBox(width: 25,),
                        Text("Donate",
                          style: TextStyle(
                            fontSize: 20,
                          ),),
                      ],
                    ),
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
