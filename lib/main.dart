import 'package:flutter/material.dart';
import 'package:untitled_fashion_app/Description_page/desription.dart';
import 'package:untitled_fashion_app/home_page/mainpage.dart';
import 'package:untitled_fashion_app/main_pages/slider_page.dart';
import 'package:untitled_fashion_app/main_pages/slider_page2.dart';
import 'package:untitled_fashion_app/pages/design_page.dart';
import 'package:untitled_fashion_app/pages/dress_collection_page.dart';
import 'package:untitled_fashion_app/pages/load_page.dart';
import 'package:untitled_fashion_app/pages/background.dart';
import 'package:untitled_fashion_app/pages/login_page.dart';
import 'package:untitled_fashion_app/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      routes: {
        "/": (context) => const LoadingPage(),
        "/designpage" : (context) => const DesignPage(),
        "/backgroundpage": (context) => const BackGroundPage(),
        "/loginpage" : (context) => const LoginPage(),
        "/signuppage" :(context) => const SignUpPage(),
        "/slider_page" : (context) => const CarouselSliderPage(),
        "/slider2_page" : (context) => const SecondCarouselPage(),
        "/main_page": (context) => const MainPage(),
        "/dresscollection" : (context) => const DressCollectionPage(),
        "/descriptionpage": (context)=> const DescriptionPage()
      },
    );
  }
}
