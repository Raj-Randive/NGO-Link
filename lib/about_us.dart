import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 71, 167, 246),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                'About the App',
                style: TextStyle(
                  fontFamily: "GTWalsheimPro",
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 18),
              child: Text(
                'NGO Link',
                style: TextStyle(
                  fontFamily: "GTWalsheimPro",
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            
            Padding(
              padding: EdgeInsets.only(top: 18),
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/Logo2.png'),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'The app aims to promote connectivity between Non-Governmental Organizations (NGOs) and individuals seeking to contribute to charitable causes. The app provides a platform for NGOs to showcase their mission, events, and volunteer opportunities, making it easier for people to find ways to get involved. The app allows individuals to search for NGOs based on their interests, location, and availability, and provides a messaging system to facilitate communication between NGOs and volunteers. The app also provides features to donate to NGOs and track donations. The goal of the app is to increase awareness and engagement in charitable causes, and provide a seamless and efficient way for NGOs and individuals to connect and work towards a better world. \n\nDespite the numerous Non-Governmental Organizations (NGOs) working towards solving various social and environmental issues, people often struggle to find a reliable platform to connect with them. There is no central hub that effectively showcases NGO missions, events, and volunteer opportunities, making it difficult for individuals to get involved in charitable causes. Moreover, NGOs often face challenges in reaching out to potential volunteers and donors due to a lack of effective communication channels. This lack of connectivity between NGOs and individuals results in missed opportunities for social and environmental impact. Therefore, there is a pressing need for an app that promotes connectivity between NGOs and people seeking to contribute to charitable causes, making it easier for individuals to find ways to get involved, and for NGOs to reach out to potential volunteers and donors.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: "GTWalsheimPro",
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
