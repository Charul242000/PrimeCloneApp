import 'package:amazon_prime_clone/screens/downloads.dart';
import 'package:amazon_prime_clone/screens/home.dart';
import 'package:amazon_prime_clone/screens/my_profile.dart';
import 'package:amazon_prime_clone/screens/search.dart';
import 'package:amazon_prime_clone/themes.dart';
import 'package:amazon_prime_clone/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex=0;
  final List<Widget> tabs=[
    HomePage(),
    Search(),
    Downloads(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData.dark(),
      initialRoute: "/",
      routes: {

        MyRoutes.mainRoute:(context)=>MyApp(),
        MyRoutes.homeRoute:(context)=>HomePage(),
        },
      home: Scaffold(
        body: Center(
          child: tabs.elementAt( _currentIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF1C1917),
          fixedColor: Color(0xFF0F172A),
          currentIndex: _currentIndex,

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Vx.white,),
              title:Text('Home',style: TextStyle(
                  color:Colors.red
              ),),
              activeIcon:  Icon(Icons.home,color:Colors.red,),

            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search,color:Vx.white,),
                title:Text('Search',
                    style: TextStyle(
                    color:Colors.red
                ),
                ),
              activeIcon:  Icon(Icons.search,color:Colors.red,),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.file_download,color: Vx.white,),
                title:Text('Downloads',
                  style: TextStyle(
                      color:Colors.red
                  ),
                ),
              activeIcon:  Icon(Icons.file_download,color:Colors.red,),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person,color: Vx.white,),
                title:Text('Profile',
                  style: TextStyle(
                      color:Colors.red
                  ),
                ),
              activeIcon:  Icon(Icons.person,color:Colors.red,),
            ),
          ],
          onTap: (int index){
            setState(() {
              _currentIndex=index;
            });
          },
        ),
      ),

    );
  }
}
