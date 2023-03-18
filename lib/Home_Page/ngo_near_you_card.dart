import 'package:flutter/material.dart';
import 'package:ngo_link/NGO_Card_Pages/ngo_card_page.dart';

class NgoNearYouCard extends StatelessWidget {
  NgoNearYouCard({super.key,required this.ngoImages,required this.ngoName,required this.ngoSector,required this.ngoCity,required this.ngoState,required this.ngoCountry,required this.ngoAbout,required this.ngoAddress,required this.ngoPhoneNo,required this.ngoWebsiteLink,required this.ngoMapLoc});

  List ngoImages=[];
  String ngoName,ngoCity,ngoState,ngoCountry,ngoSector,ngoAbout,ngoAddress,ngoWebsiteLink,ngoPhoneNo,ngoMapLoc;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Row(
      children: [
        TextButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => NGOCardPage(ngoName: ngoName, ngoCity: ngoCity, ngoCountry: ngoCountry, ngoSector: ngoSector, ngoState: ngoState,ngoAbout: ngoAbout,ngoAddress: ngoAddress,ngoPhoneNo: ngoPhoneNo,ngoWebsiteLink: ngoWebsiteLink,ngoMapLoc: ngoMapLoc,ngoImages: ngoImages,)));
          },
          child: Container(
            height: 250,
            width: 280,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade500,
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: Offset(2,5)
                  )
                ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(ngoImages[0]),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(ngoName,
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontFamily: "FiraSans",
                              fontSize: 19,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "($ngoSector)",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),
                          )
                        ],
                      ),
                      Text(
                        "$ngoCity, $ngoState, $ngoCountry",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 12
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 10,),
      ],
    );
  }
}