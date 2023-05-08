import 'package:flutter/material.dart';
import 'package:untitled_fashion_app/home_page/home_class.dart';
import "package:google_fonts/google_fonts.dart";
class DressCollectionPage extends StatefulWidget {
  const DressCollectionPage({Key? key}) : super(key: key);

  @override
  State<DressCollectionPage> createState() => _DressCollectionPageState();
}

class _DressCollectionPageState extends State<DressCollectionPage> {


  final List _dressItems = [
    ["assets/pexels-ali-pazani-2737004.jpg", "Dress 1", 10],
    ["assets/pexels-ali-pazani-2752045.jpg", "Dress 2", 14],
    ["assets/pexels-ali-pazani-2752045.jpg", "Dress 3", 13],
    ["assets/pexels-uus-supendi-245388.jpg", "Dress 4", 10],
    ["assets/pexels-motional-studio-1081685.jpg", "Dress 5", 19],
    ["assets/pexels-ali-pazani-2752045.jpg", "Dress 6", 12],
    ["assets/pexels-ali-pazani-2752045.jpg", "Dress 7", 15],
    ["assets/pexels-kourosh-qaffari-1921168.jpg", "Dress 8", 14],
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_sharp)),
        title: Text("Back"),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            SizedBox(
              height: 50,
              child: ListTile(
                title: Text("Women's Top",
                  style: GoogleFonts.josefinSans(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
                subtitle: Text("Style Out",
                style: GoogleFonts.josefinSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
                ),
                trailing: Text("Style")
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 600,
              child: GridView.builder(
                scrollDirection: Axis.vertical,
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
    );
  }
}
