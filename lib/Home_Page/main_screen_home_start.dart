import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ngo_link/Home_Page/ngo_near_you_card.dart';
import 'package:ngo_link/Home_Page/categories.dart';
import 'package:get/get.dart';


class MainScreenHomeStart extends StatefulWidget {
  const MainScreenHomeStart({
    super.key,
  });

  @override
  State<MainScreenHomeStart> createState() => _MainScreenHomeStartState();
}

class _MainScreenHomeStartState extends State<MainScreenHomeStart> {

  var collection=FirebaseFirestore.instance.collection("NGOs");
  late List<Map<String,dynamic>> items ;
  bool isLoaded=false;
  _incrementCounter() async{
    List<Map<String,dynamic>> tempList=[];
    var data= await collection.get();

    for (var element in data.docs) {
      tempList.add(element.data());
    }

    setState(() {
      items=tempList;
      isLoaded=true;
    });
  }

  @override
  Widget build(BuildContext context) {
    _incrementCounter();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Categories",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: "Rubik",
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
        Categories(),
        SizedBox(height: 20,),

        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      "NGO's Near You",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontFamily: "Rubik",

                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            )
                        ),
                      ),
                        child: const Text(
                          "View More",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                    ),
                  ],
                ),
              ),



              isLoaded?SizedBox(
                height: 270,
                child: ListView.builder(
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) {
                    return Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Row(
                      children: [
                        NgoNearYouCard(
                          ngoImages: items[index]["Images"],
                          ngoName: "${items[index]["Name"]??"untitled"}",
                          ngoSector: "${items[index]["Sector"]??"untitled"}",
                          ngoCity: "${items[index]["City"]??"untitled"}",
                          ngoState: "${items[index]["State"]??"untitled"}",
                          ngoCountry: "${items[index]["Country"]??"untitled"}",
                          ngoAbout: "${items[index]["About"]??"untitled"}",
                          ngoAddress: "${items[index]["Address"]??"untitled"}",
                          ngoPhoneNo: "${items[index]["PhoneNo"]??"untitled"}",
                          ngoWebsiteLink: "${items[index]["Website"]??"untitled"}",
                          ngoMapLoc: "${items[index]["GMapLocation"]??"untitled"}",

                        ),
                      ],
                    ),
                  );
                }
                ),
              ):Text("No Data"),
            ],
          ),
        ),

      ],
    );
  }
}

