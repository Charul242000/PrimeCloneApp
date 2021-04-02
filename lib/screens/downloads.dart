import 'package:amazon_prime_clone/utils/gradient_background.dart';
import 'package:flutter/material.dart';
class Downloads extends StatefulWidget {
  @override
  _DownloadsState createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Stack(
        children: [
          GradientBackground(),
          Container(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'No videos downloaded',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )

    );
  }
}
