import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget topMenu() {
  return Container(
          
            padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 15.0, bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 60.0,
                    width: 60.0,
                    child: new Icon(
                      FontAwesomeIcons.plane,
                      color: Colors.white,
                      size: 18.0,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text("Flights", style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey
                  ),)
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 60.0,
                    width: 60.0,
                    child: new Icon(
                      FontAwesomeIcons.hotel,
                      color: Colors.white,
                      size: 18.0,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.purple)
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text("Hotels", style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey
                  ),)
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 60.0,
                    width: 60.0,
                    child: new Icon(
                      FontAwesomeIcons.train,
                      color: Colors.white,
                      size: 18.0,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text("Trains", style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey
                  ),)
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 60.0,
                    width: 60.0,
                    child: new Icon(
                      FontAwesomeIcons.car,
                      color: Colors.white,
                      size: 18.0,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text("Cars", style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey
                  ),)
                ],
              )
            ],
          )
          );
}