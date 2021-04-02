import 'package:amazon_prime_clone/utils/movies_items.dart';
import 'package:amazon_prime_clone/utils/slider_item.dart';
import 'package:amazon_prime_clone/utils/tvshow_items.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}
const kHeadingStyle= TextStyle(
  color: Colors.white,
  fontSize: 20.0,
  fontWeight: FontWeight.w500,
);


class _HomeTabState extends State<HomeTab> {

  List<String> live =[

    'assets/images/livepos1.jpg',
    'assets/images/livepos2.jpg',
    'assets/images/livepos3.jpg',
    'assets/images/livepos4.jpg',
    'assets/images/livepos5.jpg',
  ];
  List<String> name =[

    'livepos1',
    'livepos2',
    'livepos3',
    'livepos4',
    'livepos5',
  ];

  List<String> movies=[
    "assets/images/chhalaangposmov.jpg",
    "assets/images/coolieposter.jpg",
    "assets/images/padmavatposmov.jpg",
    "assets/images/shakunposmov.jpg",
    "assets/images/soty2posmov.jpg"
  ];
  List<String> tvshows=[
    "assets/images/tandavpostv.jpg",
    "assets/images/straingerpostv.jpg",
    "assets/images/littlethingspostertv.jpg",
    "assets/images/guiltypostertv.jpg",
    "assets/images/aashrampostv.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Live Streaming",
              style:kHeadingStyle
            ),
            SizedBox(
              height: 12,
            ),
            CarouselSlider(
              options: CarouselOptions(
                enableInfiniteScroll: true,
                aspectRatio: 16/9,
                height: 280,
                enlargeCenterPage: true,
                initialPage: 0,

                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 300),
                autoPlayCurve: Curves.fastOutSlowIn,


                scrollDirection: Axis.horizontal,
              ),
              items: [
                sliderItem(live[0],name[0]),
                sliderItem(live[1],name[1]),
                sliderItem(live[2],name[2]),
                sliderItem(live[3],name[3]),
                sliderItem(live[4],name[4]),
              ],
            ),
            Text(
              'Movies',
              style: kHeadingStyle,
            ),
            SizedBox(height: 10,),
            Container(
              height: 280,
              width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    moviesListItems(movies[0]),
                    moviesListItems(movies[1]),
                    moviesListItems(movies[2]),
                    moviesListItems(movies[3]),
                    moviesListItems(movies[4]),

                  ],
                ),
            ),
            Text(
              'Tv Shows',
              style: kHeadingStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 280,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  tvListItems(tvshows[0]),
                  tvListItems(tvshows[1]),
                  tvListItems(tvshows[2]),
                  tvListItems(tvshows[3]),
                  tvListItems(tvshows[4]),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
