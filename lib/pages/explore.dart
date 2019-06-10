import 'package:flutter/material.dart';
import 'package:travel/widgets/destinations.dart';
import 'package:travel/widgets/topmenu.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        
        children: <Widget>[
         topMenu(),
         destination(context)
        ],
      ),
    );
  }
}
