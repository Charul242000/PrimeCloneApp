import 'package:flutter/material.dart';
Widget tvListItems(String img){
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 250,
            width: 150,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover
              ),
            ),
          ),
        )
      ],
    ),
  );
}