import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:untitled_fashion_app/home_page/home_class.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 final List _dressItems = [
   ["assets/pexels-ali-pazani-2737004.jpg", "Dress 1", 10],
   ["assets/pexels-ali-pazani-2752045.jpg", "Dress 2", 14],
   ["assets/pexels-ali-pazani-2752045.jpg", "Dress 3", 14],
   ["assets/pexels-ali-pazani-2737004.jpg", "Dress 4", 10],
   ["assets/pexels-ali-pazani-2752045.jpg", "Dress 5", 14],
 ];


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                   Container(
                     height: height * 0.38,
                     decoration: const BoxDecoration(
                       borderRadius: BorderRadius.only(
                           bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5)),
                       image: DecorationImage(
                         image: AssetImage("assets/pexels-dziana-hasanbekava-5480690.jpg"),
                         fit: BoxFit.cover
                       )
                     ),
                   ),
                  Column(

                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(Icons.favorite_outline_outlined, color: Colors.white),
                            SizedBox(width: 15),
                            Icon(Icons.shopping_bag_outlined, color: Colors.white),
                          ],

                        ),
                      ),
                      SizedBox(height: height * 0.07,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Shop your "
                                "clothings here",
                            style: GoogleFonts.josefinSans(
                                fontSize: 20,
                                color: Colors.white,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: height * 0.02),
                            Align(
                              alignment: Alignment.centerLeft,
                                child: Text("20% OFF",
                                style: GoogleFonts.josefinSans(
                                    fontSize: 50,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold)
                                )
                            ),
                            Text("Get all your Items here",
                                style: GoogleFonts.josefinSans(
                                fontSize: 20,
                                color: Colors.white,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.bold)
                            ),


                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.025),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          padding: const EdgeInsets.only(top: 17, bottom: 17, left: 40, right: 40),
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Text("Shop Now",
                          style: GoogleFonts.josefinSans(
                              fontSize: 18,
                              color: Colors.white,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.bold)),
                        ),
                      ),

                    ],
                  ),


                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Designer Collection"),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, "/dresscollection");
                  },
                      child: Text( "Show All",
                          style: GoogleFonts.josefinSans(color: Colors.black)

                      )
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: height * 0.3,
                    child: PageView.builder(
                      padEnds: false,
                      scrollDirection: Axis.horizontal,
                        controller: PageController(viewportFraction: 0.52),
                        reverse: true,
                        pageSnapping: true,
                        itemCount: _dressItems.length, 
                        itemBuilder: (context, index){
                          return DressTile(
                              img: _dressItems[index][0],
                              Name: _dressItems[index][1],
                              amount: _dressItems[index][2]);
                        }),
                  ),
                  SizedBox(
                    height: height * 0.08,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Top Trends",
                          style: GoogleFonts.josefinSans(color: Colors.black),
                        ),
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, "/dresscollection");
                        },
                            child: Text( "Show All",
                            style: GoogleFonts.josefinSans(color: Colors.black)

                        )
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.7,
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 10),
                    itemCount: _dressItems.length,
                    itemBuilder: (context, index){
                      return  DressTile(
                        img:_dressItems[index][0] ,
                        Name:_dressItems[index][1],
                        amount:_dressItems[index][2] ,
                      );
                    }),
              )

            ],
          ),
        ),
      ),
    );
  }
}
