import 'package:amazon_prime_clone/utils/gradient_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:amazon_prime_clone/themes.dart';
import 'package:velocity_x/velocity_x.dart';
class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF0F172A),
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Search',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red[500],
              fontSize: 25
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search,color: Vx.white,),
            onPressed: (){
              showSearch(context: context, delegate: DataSearch());
            },
          )
        ],
      ),
      body: Stack(
        children: [
          GradientBackground(),

        ],
      )
    );
  }
}


class DataSearch extends SearchDelegate<String>{


  final dummySearches=[
    'Coolie No.1',
    'Chhalaang',
    'Shakuntala Devi'
    'DurgaMati The Myth',
    'KGF Chapter 1',
    'War',
    'Gulabo Sitabo',
    'Student of the year 2',
    'Good Newwz',
    'Padmavat',
    'Street Dancer 3',
    'Raazi',
    'Sonu ke Titu ki Sweety',
    'Dabangg'
  ];
  final recentSearch=[
    'DurgaMati The Myth',
    'KGF Chapter 1',
    'War',
    'Gulabo Sitabo',
    'Student of the year 2',
  ];
  @override
  ThemeData appBarTheme(BuildContext context) {
    // TODO: implement appBarTheme
    return Theme.of(context);
  }


  @override
  List<Widget> buildActions(BuildContext context) {
     return [


       IconButton(icon:Icon(Icons.clear,color: Colors.white,),
       onPressed:(){
         query="";
       }
       )
     ];
  }

  @override
  Widget buildLeading(BuildContext context) {
   return IconButton(
     icon: AnimatedIcon(
       icon:AnimatedIcons.menu_arrow,

       progress: transitionAnimation,
     ),
     onPressed: (){
       close(context, null);
     },
   );

  }

  @override
  Widget buildResults(BuildContext context) {
   return Center(
     child: Container(
       height: 100,
       width: 100,
       child: Card(
         color: context.theme.canvasColor,
        child: Center(
          child: Text(query).text.red600.make(),
        ),
       ),
     ),
   );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
   final suggestionList=
   query.isEmpty?
   recentSearch: dummySearches.where((p) =>p.startsWith(query)).toList();
   return ListView.builder(itemBuilder: (context,index)=>ListTile(
     onTap: (){
       showResults(context);
     },
     leading: Icon(Icons.movie,color: Colors.white30,),
     title: RichText(
       text: TextSpan(
         text: suggestionList[index].substring(0,query.length),
         style: TextStyle(
           color: Colors.white,
           fontWeight: FontWeight.w600,
         ),
         children: [
           TextSpan(
             text:suggestionList[index].substring(query.length),
             style: TextStyle(color: Colors.white30),
           )
         ],
       ),
     )
   ),
     itemCount: suggestionList.length,
   );
  }

}


