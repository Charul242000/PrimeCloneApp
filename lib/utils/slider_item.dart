import 'package:flutter/material.dart';

Widget sliderItem(String img,String name){
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Container(
         height: 200,
         width: double.infinity,
         decoration: BoxDecoration(

           borderRadius: BorderRadius.circular(10.0),
           image: DecorationImage(
             image: AssetImage(img),
             fit: BoxFit.cover
           )
         ),
       ),
       SizedBox(height: 15,),
       Text(
         name,style: TextStyle(
           color: Colors.white,
         fontSize: 15,
         fontWeight: FontWeight.w500,
       ),
       )
     ],
    ),
  );
}