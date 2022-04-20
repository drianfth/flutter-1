import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/tourism_list.dart';
import 'Create.dart';
import 'model/tourism_place.dart';
import '/done_tourism_list.dart';
import '/provider/done_tourism_provider.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<TourismPlace> doneTourismPlaceList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Surabaya Tourism Place"),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.done_outline),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DoneTourismList(
                      doneTourismPlaceList: doneTourismPlaceList,
                    );
                  }),
                );
              }),
          IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Create();
                  }),
                );
              })
        ],
      ),
      body: TourismList(doneTourismPlaceList: doneTourismPlaceList),
    );
  }
}
