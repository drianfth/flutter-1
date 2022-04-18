import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.network(place.img),
              Container(
                  margin: EdgeInsets.only(top: 16.0, left: 20.0, right: 20.0),
                  child: Text(
                    place.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Lobster',
                      fontWeight: FontWeight.bold,
                    ),
                  )), //Container title
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        Text(place.openDay),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.schedule),
                        Text(place.openTime),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.attach_money),
                        Text(place.price),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  place.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ), //Container Description
              Container(
                height: 150,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(place.img1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(place.img2),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(place.img3),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
