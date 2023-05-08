import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondCarouselPage extends StatefulWidget {
  const SecondCarouselPage({Key? key}) : super(key: key);

  @override
  State<SecondCarouselPage> createState() => _SecondCarouselPageState();
}

class _SecondCarouselPageState extends State<SecondCarouselPage> {


  int _current  = 0;

  List imgList = [
    "assets/pexels-ali-pazani-2737004.jpg",
    "assets/pexels-ali-pazani-2752045.jpg",
    "assets/pexels-jeys-tubianosa-3538028.jpg",
    "assets/pexels-uus-supendi-245388.jpg",
    "assets/pexels-kourosh-qaffari-1921168.jpg"
  ];

  List<T> map<T>(List list, Function handler){
    List<T> result = [];
    for (var i = 0; i < list.length; i++){
      result.add(handler(i, list[i]));
    }
    return result;
  }
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: height * 0.034),
            Text("Swipe to Browse",
              style: GoogleFonts.josefinSans(
                  fontSize: 35,
                  fontWeight: FontWeight.bold
              ),
            ),
             SizedBox(height: height * 0.02),

            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text("Here there are a lot of available "
                  "clothing to search and amazing dresses to choose ",
                style: GoogleFonts.josefinSans(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: height * 0.05),
            CarouselSlider(
              options: CarouselOptions(height: height * 0.57,
                initialPage: 0,
                onPageChanged: (index, reason){
                  setState(() {
                    _current = index;
                  });
                },
                autoPlay: false,
                enlargeCenterPage: true,
                autoPlayInterval: const Duration(seconds: 3),
                enlargeFactor: 0.3,
                viewportFraction: 0.75,
                enableInfiniteScroll: true,
              ),
              items: imgList.map((imgUrl){
                return Builder(builder: (BuildContext context){
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 10),

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(imgUrl,
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                });
              }).toList(),

            ),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
                padding: const EdgeInsets.all(7),
                decoration:  BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                    child: TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context, "/main_page");
                        },
                        child: Text("Start Messaging",
                          style: GoogleFonts.josefinSans(
                              fontSize: 25,
                              color: Colors.white
                          ),
                        )
                    )
                )
            ),


          ],
        ),
      ),
    );
  }
}
