import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 100, left: 10),
                child: Text("Sign Up to create your account",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      fontSize: 30,
                      color: Colors.black
                  ),
                )
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              height: height * 0.3,
              width: double.infinity,
              child: Card(
                elevation: 4.0,
                borderOnForeground: true,
                child: Column(
                  children: [
                    ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: GoogleFonts.josefinSans(
                                  fontSize: 18
                              )
                          ),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: GoogleFonts.josefinSans(
                                  fontSize: 18
                              )
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),

            Container(
                margin: const EdgeInsets.all(13),
                padding: const EdgeInsets.all(17),
                decoration:  BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(36)
                ),
                child: Center(
                    child: Text("Sign Up",
                      style: GoogleFonts.josefinSans(
                          fontSize: 28,
                          color: Colors.white
                      ),)
                )
            ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Already have an account? ",
                 style: GoogleFonts.roboto(
                     fontSize: 20,
                     color: Colors.black
                 )
                 ),
                 GestureDetector(
                   onTap: (){
                     Navigator.pop(context);
                   },
                   child: Text("Sign In",
                   style: GoogleFonts.roboto(
                       fontSize: 20,
                       color: Colors.deepPurple
                   )
                   ),
                 )
               ],
             )
          ],
        )
    );
  }

  getBack() {
    Navigator.pop(context);
  }
}
