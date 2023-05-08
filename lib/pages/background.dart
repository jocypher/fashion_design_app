import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
class BackGroundPage extends StatefulWidget {
  const BackGroundPage({Key? key}) : super(key: key);

  @override
  State<BackGroundPage> createState() => _BackGroundPageState();
}

class _BackGroundPageState extends State<BackGroundPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/pexels-motional-studio-1081685.jpg"),
                fit: BoxFit.cover
              )
            ),
        ),
         Padding(
           padding: const EdgeInsets.only(bottom: 35.0),
           child: Center(
             child: Text("FANCY",
        style: GoogleFonts.roboto(
              fontSize: 60,
              decoration: TextDecoration.none,
              color: Colors.white
        )
             ),
           ),
         ),

        Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Center(
            child: Text("Shop the most Essential Goods",
                style: GoogleFonts.roboto(
                    fontSize: 22,
                    decoration: TextDecoration.none,
                    color: Colors.white
                )
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.all(25),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(35),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0.2, 0.5),
                  spreadRadius: 3,
                  blurStyle: BlurStyle.solid
                )
              ]
            ) ,
            child: TextButton(
              onPressed: (){
                Navigator.pushNamed(context, "/loginpage");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  const Icon(Icons.email_outlined,
                    color: Colors.black,
                  ),
                  Text("Sign In with your email",
                  style: GoogleFonts.josefinSans(
                    fontSize: 20,
                    color: Colors.black
                  ),
                  ),
                ],
              ),

            ),
          ),
        ),

        Container(
          margin: const EdgeInsets.only(top: 530,left: 25, right: 25 ),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(35),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0.2, 0.5),
                    spreadRadius: 3,
                    blurStyle: BlurStyle.solid
                )
              ]
          ) ,
          child: TextButton(
            onPressed: (){},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                const Icon(Icons.facebook_outlined,
                  color: Colors.white,
                ),
                Text("Connect with facebook",
                  style: GoogleFonts.josefinSans(
                      fontSize: 20,
                      color: Colors.white
                  ),
                ),
              ],
            ),

          ),
        ),


        
      ],
    );
  }
}
