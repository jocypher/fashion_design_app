import 'package:flutter/material.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({Key? key}) : super(key: key);

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    return SafeArea(
      child: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Material(
                    elevation: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: (){
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Icons.arrow_back_ios)),
                        Row(
                          children: [
                            IconButton(
                                onPressed: (){
                                },
                                icon: const Icon(Icons.favorite_outline)),

                            IconButton(
                                onPressed: (){ },
                                icon: const Icon(Icons.shopping_bag)),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                  height: height * 0.48,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/pexels-jeys-tubianosa-3538028.jpg"),
                          fit: BoxFit.cover
                      )
                  ),
                    ),
                  Container(
                    height: MediaQuery.of(context).size.height *0.43,
                    decoration: const BoxDecoration(
                        color: Colors.amber,

                    ),
                  )
                ],
              ),
            ],

          ),


        ],
      ),
    );
  }
}
