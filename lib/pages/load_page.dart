import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/pexels-dziana-hasanbekava-5480690.jpg"),
            fit: BoxFit.cover
          )
        ),
        ),

        Container(
          margin: const EdgeInsets.only(bottom: 400),
          child: Center(
            child: DefaultTextStyle(
              style: GoogleFonts.josefinSans(
                  fontSize: 70,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold),
              child: AnimatedTextKit(
                repeatForever: false,
                  totalRepeatCount: 1,
                  animatedTexts:[ RotateAnimatedText(
                    "Fancy",
                    rotateOut: false,
                    duration: const Duration(milliseconds: 4000)
                  ),
    ]
    ),
            ),
          ),
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            DefaultTextStyle(
                style: GoogleFonts.josefinSans(
                  fontSize: 45,
                  color: Colors.white
                ), child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TyperAnimatedText("Shop the most modern Essentials",
                curve: Curves.bounceIn,
                speed: const Duration(milliseconds: 300))
              ],
              totalRepeatCount: 20,
            )
            ),

          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.only(left: 60, right: 40, bottom: 10),
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
                    Navigator.pushNamed(context, "/designpage");
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
    ]
    );
  }
}
