import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ngo_link/Home_Page/navigation_bar/nav_bar.dart';


class NGOCardPage extends StatefulWidget {
  List<dynamic> ngoImages=[];
  String ngoName,ngoCity,ngoState,ngoCountry,ngoSector,ngoAbout,ngoAddress,ngoWebsiteLink,ngoPhoneNo,ngoMapLoc;

  NGOCardPage({Key? key,required this.ngoImages,required this.ngoName,required this.ngoSector,required this.ngoCity,required this.ngoState,required this.ngoCountry,required this.ngoAbout,required this.ngoAddress,required this.ngoPhoneNo,required this.ngoWebsiteLink,required this.ngoMapLoc}) : super(key: key);

  @override
  State<NGOCardPage> createState() => _NGOCardPageState(ngoName: this.ngoName,ngoSector: this.ngoSector,ngoCity: this.ngoCity,ngoState: this.ngoState,ngoCountry: this.ngoCountry,ngoAbout: this.ngoAbout,ngoAddress: this.ngoAddress,ngoPhoneNo: this.ngoPhoneNo,ngoWebsiteLink: this.ngoWebsiteLink,ngoMapLoc: this.ngoMapLoc,ngoImages: this.ngoImages);
}

class _NGOCardPageState extends State<NGOCardPage> {
  // List<String> ngoPictures = [
  //   "images/MaaFoundation.png",
  //   "images/MaaFoundation.png",
  //   "images/MaaFoundation.png",
  //   "images/MaaFoundation.png",
  // ];
  int activeIndex = 0;
  List<dynamic> ngoImages=[];
  String ngoName,ngoCity,ngoState,ngoCountry,ngoSector,ngoAbout,ngoAddress,ngoWebsiteLink,ngoPhoneNo,ngoMapLoc;

  _NGOCardPageState({required this.ngoName,required this.ngoSector,required this.ngoCity,required this.ngoState,required this.ngoCountry,required this.ngoAbout,required this.ngoAddress,required this.ngoPhoneNo,required this.ngoWebsiteLink,required this.ngoMapLoc, required this.ngoImages});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CarouselSlider.builder(
                          itemCount: ngoImages.length,
                          itemBuilder: (context, index, realIndex) {
                            final ngoPicture = ngoImages[index];
                            return buildImage(ngoPicture, index);
                          },
                          options: CarouselOptions(
                              viewportFraction: 1,
                              autoPlay: true,
                              pauseAutoPlayOnTouch: true,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  activeIndex = index;
                                });
                              })),
                      buildIndicator(),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            // color: Colors.black.withOpacity(0.6),
                            border: Border.all(color: Colors.white, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 5, 0, 5),
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text(
                            "$ngoName",
                            style: TextStyle(
                              fontFamily: "GTWalsheimPro",
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "$ngoSector",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontFamily: "FiraSans",
                              fontSize: 15,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.link,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                child: InkWell(
                                  child: Text(
                                    "$ngoName Link",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                        fontSize: 15),
                                  ),
                                  onTap: () => launchUrl(Uri.parse(
                                      "$ngoWebsiteLink")),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: InkWell(
                                onTap: () =>
                                    launchUrl(Uri.parse("tel://$ngoPhoneNo")),
                                child: Text(
                                  "$ngoPhoneNo",
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: InkWell(
                                onTap: () => launchUrl(Uri.parse(
                                    "$ngoMapLoc")),
                                child: Text(
                                  "$ngoAddress",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Divider(
                        color: Colors.black.withOpacity(0.4),
                        thickness: 1,
                      ),
                    ),
                    Text(
                      "About",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Rubik",
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "$ngoAbout",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Nav_bar(),
    );
  }

  Widget buildImage(String ngoPicture, int index) {
    return Container(
      width: double.infinity,
      color: Colors.grey,
      child: Image.network(
        ngoPicture,
        fit: BoxFit.fill,
      ),
    );
  }

  Widget buildIndicator() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: ngoImages.length,
      ),
    );
  }
}
