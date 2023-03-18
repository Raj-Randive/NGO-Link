import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> category=["All","Education","Health","Rural Development","Environment","Women's Empowerment","Children","Old Age Homes"];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (
          context,index)=> Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex=index;
                });
              },
              child: Container(
                height: 20,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: selectedIndex==index ? Colors.blue[200] : Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    category[index],
                  ),
                ),
              ),
            ),
          ),
      ),
    );
  }
}
