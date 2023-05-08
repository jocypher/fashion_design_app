import 'package:flutter/material.dart';

class DressTile extends StatefulWidget {
  final String img;
  final String Name;
  final int amount;
  const DressTile({
    Key? key,
  required this.img,
  required this.Name,
  required this.amount
  }) : super(key: key);

  @override
  State<DressTile> createState() => _DressTileState();
}

class _DressTileState extends State<DressTile> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {

    return   Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         GestureDetector(
           onTap: (){
             Navigator.pushNamed(context, "/descriptionpage");
           },
           child: Card(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(20)
             ),
             elevation: 2,
             child: Column(
               children: [
                 ClipRRect(
                   borderRadius:BorderRadius.only(
                       topLeft: Radius.circular(20),
                   topRight: Radius.circular(20)),
                   child: Image.asset(widget.img,
                   width: 250,
                   height: 110,
                   fit: BoxFit.fill),
                 ),
                 ListTile(
                   title: Text(widget.Name),
                   subtitle: Text("\$"+ widget.amount.toString()),
                   trailing: IconButton(
                       onPressed: (){
                         setState(() {
                           isPressed = true;
                         });
                       },
                        color: (isPressed) ? Colors.pinkAccent : Colors.black,

                       icon: Icon(Icons.favorite),
                       ),

                 )



               ],
             )
           ),
         ),

      ],
    );
  }
}





