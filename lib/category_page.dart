import 'dart:math';

import 'package:flutter/material.dart';
import 'styles/colors.dart';
import 'styles/styles.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: Container(
                  padding: const EdgeInsets.all(20),
                  // height: size.height / 4,
                  width: size.width,
                  decoration: const BoxDecoration(
                      color: InnerColors.purple,
                      image: DecorationImage(
                          image: AssetImage('images/category_images/BG-Gradient.png'),

                          fit: BoxFit.cover)),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Choose Your Category',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.6), fontSize: 30),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                  )),
            ),
            Expanded(
              child: Container(
                // padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                // height: size.height - (size.height / 5),
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    // borderRadius: BorderRadius.circular(34)
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Text(
                              'All',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                              ),
                              // style: InnerStyle.m12b.copyWith(
                              //     decoration: TextDecoration.underline),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Text('Favourite',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6))),
                            const SizedBox(
                              width: 30,
                            ),
                            Text('Recommended',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6))),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 7.0, vertical: 21.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: const [
                                  LongCourseCard(
                                      background: InnerColors.pink,
                                      title: 'Agriculture',
                                      image: 'images/category_images/Farmer.jpg'),
                                  LongCourseCard(
                                      background: InnerColors.purple,
                                      title: 'Human Rights',
                                      image: 'images/category_images/Farmer.jpg'),
                                  LongCourseCard(
                                      background: InnerColors.orange,
                                      title: 'Disaster Management',
                                      image: 'images/category_images/Disaster.jpg'),
                                  LongCourseCard(
                                      background: InnerColors.purple,
                                      title: 'HIV/AIDS',
                                      image: 'images/category_images/HIV.jpg'),
                                  LongCourseCard(
                                      background: InnerColors.red,
                                      title: 'Poverty Removal',
                                      image: 'images/category_images/Poverty.jpg'),
                                  LongCourseCard(
                                      background: InnerColors.green,
                                      title: 'Education',
                                      image: 'images/category_images/education.jpg'),
                                ],
                              ),
                              SingleChildScrollView(
                                child: Column(
                                  children: const [
                                    LongCourseCard(
                                        background: InnerColors.purple,
                                        title: 'Cultural & Heritage',
                                        image: 'images/category_images/Heritage.jpg'),
                                    LongCourseCard(
                                        background: InnerColors.red,
                                        title: 'Population',
                                        image: 'images/category_images/Population1.jpg'),
                                    LongCourseCard(
                                        background: InnerColors.green,
                                        title: 'Old Age Care',
                                        image: 'images/category_images/Oldage.jpg'),
                                    LongCourseCard(
                                        background: InnerColors.green,
                                        title: 'Health & Hygiene',
                                        image: 'images/category_images/Health.jpg'),
                                    LongCourseCard(
                                        background: InnerColors.orange,
                                        title: 'Rural Development',
                                        image: 'images/category_images/Rural.jpg'),
                                    LongCourseCard(
                                        background: InnerColors.green,
                                        title: 'Women Welfare',
                                        image: 'images/category_images/WomenWelfare.jpg')
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LongCourseCard extends StatelessWidget {
  final Color background;
  final String title;

  final String image;
  const LongCourseCard(
      {Key? key,
      required this.background,
      required this.title,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return TextButton(
      onPressed: () {},
      child: Container(
        margin: const EdgeInsets.only(bottom: 14),
        width: screenSize.width*0.43,
        height: screenSize.height*0.2707,
        decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(34),
            border: Border.all(color: Colors.white, width: 10),
            boxShadow: [
              BoxShadow(
                  blurRadius: 50,
                  color: const Color(0xFF0B0C2A).withOpacity(.09),
                  offset: const Offset(10, 10))
            ]),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(height: 16),
          Text(title, style: InnerStyle.m12w),
          Container(
            height: 220-52,
            width: 175-20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill
              ),
            ),
          )
          // Image.asset(
          //   image,
          //   height: 220 - 52,
          //   width: 175 - 20,
          //   fit: BoxFit.cover,
          // ),
        ]),
      ),
    );
  }
}
