import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled_fashion_app/home_page/account.dart';
import 'package:untitled_fashion_app/home_page/bookmark.dart';
import 'package:untitled_fashion_app/home_page/explore.dart';
import 'package:untitled_fashion_app/home_page/home.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List pages = [
    const HomePage(),
    const ExplorePage(),
    const BookmarkPage(),
    const AccountPage()
  ];

  int currentIndex = 0;

  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar:  BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(0.9),
        selectedFontSize: 17,
        unselectedFontSize: 15,
        onTap: onTap,
        selectedLabelStyle: GoogleFonts.josefinSans(color: Colors.black),
        unselectedLabelStyle: GoogleFonts.josefinSans(color: Colors.black),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.remove_red_eye_outlined),
            label: "Explore",

          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_add),
              label: "Bookmark"
          ),

          BottomNavigationBarItem(icon:
          Icon(Icons.person),
              label: "Account"
          )
        ],
      ),
    );
  }
}
