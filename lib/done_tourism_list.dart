import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/provider/done_tourism_provider.dart';
import 'model/tourism_place.dart';

class DoneTourismList extends StatelessWidget {
  // const DoneTourismList({Key? key, List<TourismPlace> doneTourismPlaceList}) : super(key: key);
  final List<TourismPlace> doneTourismPlaceList;
  const DoneTourismList({Key? key, required this.doneTourismPlaceList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<TourismPlace> doneTourismPlaceList =
        Provider.of<DoneTourismProvider>(
      context,
      listen: false,
    ).doneTourismPlaceList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Telah Dikunjungi'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final TourismPlace place = doneTourismPlaceList[index];
          return Card(
              color: Colors.white60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    place.title,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const Icon(Icons.done_outline),
                ],
              ));
        },
        itemCount: doneTourismPlaceList.length,
      ),
    );
  }
}
