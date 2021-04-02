import 'package:amazon_prime_clone/screens/tab_screens/tab_home.dart';
import 'package:amazon_prime_clone/screens/tab_screens/tab_movies.dart';
import 'package:amazon_prime_clone/screens/tab_screens/tab_seriels.dart';
import 'package:amazon_prime_clone/screens/tab_screens/tab_watch_live.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:Color(0xFF0F172A),
          centerTitle: true,
          title: Text(
            'Clone',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red[500],
                fontSize: 25
            ),
          ),
          bottom: TabBar(
            tabs: [
              Text('Home').text.red600.make(),
              Text('Live').text.red600.make(),
              Text('Movies').text.red600.make(),
              Text('Serials').text.red600.make(),
            ],
          ),
        ),
        backgroundColor: Color(0xFF1C1917),
        body: TabBarView(

          children: [
            HomeTab(),
            WatchLiveTab(),
            MovieTab(),
            SerialsTab()
          ],
        ),

      ),
    );
  }
}
