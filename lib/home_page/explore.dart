import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled_fashion_app/home_page/explore_class.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {

  final List _dressItems = [
    ["assets/pexels-ali-pazani-2737004.jpg", "Dress 1", 10],
    ["assets/pexels-dziana-hasanbekava-5480690.jpg", "Dress 2", 14],
    ["assets/pexels-uus-supendi-245388.jpg", "Dress 3", 14],
    ["assets/pexels-kourosh-qaffari-1921168.jpg", "Dress 4", 10],
    ["assets/pexels-ali-pazani-2752045.jpg", "Dress 5", 14],
  ];


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text("Explore",
                  style: GoogleFonts.josefinSans(
                    color: Colors.black,
                    fontSize: 55,
                    fontWeight: FontWeight.bold
                  )
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 7),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    style: BorderStyle.solid
                  )
                ),
                child:  TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Explore",
                    hintStyle: GoogleFonts.josefinSans(),

                    prefixIcon: const Icon(Icons.search_outlined)
                  ),
                ),
              ),
              SizedBox(
                height: height ,
                child: PageView.builder(

                    scrollDirection: Axis.vertical,
                    controller: PageController(viewportFraction: 0.9),
                    reverse: false,
                    pageSnapping: true,
                    itemCount: _dressItems.length,
                    itemBuilder: (context, index){
                      return ExploreTile(
                          img: _dressItems[index][0],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
