
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100, left: 10),
                child: Center(
                  child: Text("Login Into your \n \t \t \t account",
                  style: GoogleFonts.roboto(
                    fontSize: 30,
                    color: Colors.black
                  ),
                  ),
                )
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              height: 200,
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
                    Align(
                      alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 14.0, top: 10),
                          child: Text("Forgot Password?",
                          style: GoogleFonts.roboto(
                            fontSize: 18
                          ),),
                        ))
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
                child: TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, "/slider_page");
                  },
                  child: Text("Log In",
                style: GoogleFonts.josefinSans(
                  fontSize: 28,
                  color: Colors.white
                ),
                  )
    )
            )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? ",
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        color: Colors.black
                    )
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, "/signuppage");
                  },
                  child: Text("Sign up Now",
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
}
