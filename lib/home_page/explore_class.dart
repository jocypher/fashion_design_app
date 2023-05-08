import 'package:flutter/material.dart';

class ExploreTile extends StatelessWidget {
  final String img;

  const ExploreTile({
    Key? key,
    required this.img,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
         elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          child:  ClipRRect(
              borderRadius: BorderRadius.circular(20),
            child: Image.asset(
                img,
                fit: BoxFit.cover,
                height: 500,
                width: 400),
          ),
        ),


      ],
    );
  }
}
