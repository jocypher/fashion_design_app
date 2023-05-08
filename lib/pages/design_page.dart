import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class DesignPage extends StatefulWidget {
  const DesignPage({Key? key}) : super(key: key);

  @override
  State<DesignPage> createState() => _DesignPageState();
}

class _DesignPageState extends State<DesignPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  const Image(
                    image: AssetImage("assets/pexels-ali-pazani-2737004.jpg"),
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.5),
                    child: Center(
                      child: Text(
                        "Fancy",
                        style: GoogleFonts.josefinSans(
                          color: Colors.white,
                          fontSize: 65,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  const Image(
                    image: AssetImage("assets/pexels-jeys-tubianosa-3538028.jpg"),
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 30),
                          child: Text(
                              "Shop The Most ",
                              style:GoogleFonts.josefinSans(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none
                          ),),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 30),
                          child: Text(
                            "Essentials ",
                            style:GoogleFonts.josefinSans(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none
                            ),),
                        ),


                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: const EdgeInsets.only(left: 60, right: 40, top: 50),
                            padding:const  EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(40)

                            ),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: (){
                                      Navigator.pushNamed(context, "/backgroundpage");
                                    },
                                    child: Text(
                                      "Next Page",
                                      style: GoogleFonts.josefinSans(
                                          fontSize: 27,
                                          decoration: TextDecoration.none,
                                          color: Colors.white
                                      ),
                                    )
                                ),
                                const SizedBox(width: 15),
                                const Icon(Icons.arrow_forward,
                                  size: 34,
                                  color: Colors.white,)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
