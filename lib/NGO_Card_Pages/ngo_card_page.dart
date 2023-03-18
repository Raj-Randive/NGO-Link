import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ngo_link/Home_Page/navigation_bar/nav_bar.dart';

@immutable
class NGOCardPage extends StatefulWidget {
  
  String ngoName, ngoCity, ngoState, ngoCountry, ngoSector;

  NGOCardPage({Key? key, required this.ngoName, required this.ngoCity, required this.ngoState, required this.ngoCountry, required this.ngoSector}) : super(key: key);

  @override
  State<NGOCardPage> createState() => _NGOCardPageState(ngoName: this.ngoName);
}

class _NGOCardPageState extends State<NGOCardPage> {
  List<String> ngoPictures = [
    "images/MaaFoundation.png",
    "images/MaaFoundation.png",
    "images/MaaFoundation.png",
    "images/MaaFoundation.png",
  ];
  int activeIndex = 0;

  String ngoName;
  _NGOCardPageState({required this.ngoName});

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
                          itemCount: ngoPictures.length,
                          itemBuilder: (context, index, realIndex) {
                            final ngoPicture = ngoPictures[index];
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
                            "Education",
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
                                    "Maa Foundation Link",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                        fontSize: 15),
                                  ),
                                  onTap: () => launchUrl(Uri.parse(
                                      "https://www.maafoundation.org/")),
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
                                    launchUrl(Uri.parse("tel://919328869341")),
                                child: Text(
                                  "+91 81404 03100",
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
                                    "https://goo.gl/maps/5DD8mQnshfh4Ps3E8")),
                                child: Text(
                                  "Shri G. M. Bilakhia Cricket Stadium,Opp. Bilakhia House, Muktanand Marg,Chala, Vapi-396 191, Gujarat, India",
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
                      "Maa Foundation (Maa meaning MOTHER in Hindi) is a charitable (not-for-profit) organization, primarily funded by the Bilakhia family for bringing about large-scale educational reforms in the society. It is a unique NGO that studies and understands the problems and hurdles faced by the Indian education system. Our dedicated team works tirelessly at the grass-root level to induce large-scale quality reform in the education imparted in the schools, to offer holistic education to children and provide the students a vision in life. Although we embarked our journey with one district, we have built models that are scalable, sustainable, process-driven and result-oriented, ensuring easy adoption. Maa Foundation is a synergy of an NGO and a corporate world. Our team is a good mix of young people with various backgrounds such as social, industry and other streams, but connected with a common factor - having a deep social fervour. We operate at an optimum cost to achieve maximum returns to the society. We work closely with the government and maintain the highest level of efficiency and accountability in planning, executing and monitoring of our projects. We believe in social accountability measurement to maximize the benefits to the society, in the form of compounded returns.",
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
      child: Image.asset(
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
        count: ngoPictures.length,
      ),
    );
  }
}
