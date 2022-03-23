import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/tourism_list.dart';
import 'model/tourism_place.dart';
import '/done_tourism_list.dart';
import '/provider/done_tourism_provider.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  // ignore: override_on_non_overriding_member
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Surabaya'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DoneTourismList();
              }));
            },
          ),
        ],
      ),
      body: TourismList(),
    );
  }
}
