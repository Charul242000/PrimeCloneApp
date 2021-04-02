import 'package:amazon_prime_clone/utils/gradient_background.dart';
import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final GlobalKey<ExpansionTileCardState> cardA =new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GradientBackground(),
          SafeArea(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2,vertical:10),
                  child: ExpansionTileCard(
                    baseColor: Color(0xFF0F172A),
                    expandedColor: Color(0xFF0F172A),
                    key: cardA,
                    leading: CircleAvatar(
                      radius:21,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/loginicon2.jpg'),
                      ),
                    ),
                    title: Text("User Name",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,),),

                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Divider(
                        thickness: 1.0,
                        height: 1.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.add,color: Colors.white,),
                                  SizedBox(width: 10,),
                                  Text(
                                    "Create Profile",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.create,color: Colors.white,),
                                  SizedBox(width: 10,),
                                  Text(
                                    "Manage Profile",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.settings,color: Colors.white,),
                                  SizedBox(width: 10,),
                                  Text(
                                    "Settings",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                 ),
                ),
                SizedBox(
                  height: 20,
                ),

              ],
            )
          )
        ],
      ),
    );
  }
}


