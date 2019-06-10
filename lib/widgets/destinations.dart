import 'package:flutter/material.dart';
import 'package:travel/model/destination.dart';

final destinationItems = <Destination>[
  Destination(
      title: "Nice Country",
      image:
          "https://cdn-image.travelandleisure.com/sites/default/files/styles/1600x1000/public/mongolia0815.jpg?itok=EazvgF_w",
      country: "Mongolia"),
  Destination(
      title: "Abu Dhabi",
      image: "https://cdn.getyourguide.com/img/tour_img-359269-148.jpg",
      country: "Dubai"),
  Destination(
      title: "A Place to be: Berlin",
      image:
          "https://d2bgjx2gb489de.cloudfront.net/gbb-blogs/wp-content/uploads/2016/11/24111943/Berlin-city-view-870x400.jpg",
      country: "Germany"),
];
final dealsItems = <String>[
  "https://www.usnews.com/dims4/USNEWS/b127e06/2147483647/thumbnail/1000x468/quality/85/?url=http%3A%2F%2Fcom-usnews-beam-media.s3.amazonaws.com%2Fd8%2Fab%2Fc53e172746338529fdcaef9df304%2Fbc18.countries_new_zealand_crop.jpg",
  "https://cdn.theculturetrip.com/wp-content/uploads/2015/11/New-Zealand-©-vichie81-Shutterstock.jpg",
  "https://pullman.accorhotels.com/destinations/country/new-zealand-1400x788-1.jpg",
  "https://static.standard.co.uk/s3fs-public/thumbnails/image/2018/01/28/12/new-zealand-3.jpg?width=1000&height=614&fit=bounds&format=pjpg&auto=webp&quality=70&crop=16:9,offset-y0.5"
];

Widget destination(BuildContext context) {
  return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
                top: 15.0, left: 10.0, bottom: 15.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Destinations we love",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                Text(
                  "View all",
                  style: TextStyle(color: Colors.grey, fontSize: 12.0),
                )
              ],
            ),
          ),
          Container(
              height: 230,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: destinationItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                width: 300,
                                height: 180,
                                decoration: new BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    shape: BoxShape.rectangle,
                                    image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image: new NetworkImage(
                                            destinationItems[index].image)))),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              destinationItems[index].title,
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              destinationItems[index].country,
                              style:
                                  TextStyle(fontSize: 12.0, color: Colors.grey),
                            )
                          ],
                        ));
                  })),
        Padding(
            padding: EdgeInsets.only(
                top: 15.0, left: 10.0, bottom: 15.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Deals",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                Text(
                  "View all",
                  style: TextStyle(color: Colors.grey, fontSize: 12.0),
                ),
                
              ],
            ),
          ),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: SafeArea(
                top: false,
                bottom: true,
                child: Padding(
                  padding: EdgeInsets.only(right: 10.0, left: 10.0),
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    children: dealsItems.map<Widget>((String image) {
                      return Center(
                          child: Container(
                              decoration: new BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    shape: BoxShape.rectangle,
                                    image: new DecorationImage(
                                        fit: BoxFit.cover,
                                        image: new NetworkImage(
                                            image)))));
                    }).toList(),
                  ),
                )),
          )
        ],
      ));
}
