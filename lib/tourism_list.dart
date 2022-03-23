import 'package:flutter/material.dart';
import 'package:project_1/list_item.dart';
import 'package:project_1/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';
import 'model/tourism_place.dart';
import '/detail_screen.dart';
import 'model/tourism_place.dart';
import '/list_item.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key}) : super(key: key);
  // final List<TourismPlace> doneTourismPlaceList;

  // const TourismList({Key? key, required this.doneTourismPlaceList})
  //     : super(key: key);
  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  // final List<TourismPlace> doneTourismPlaceList;
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl Pemuda',
      open: 'Tuesday - Sunday',
      cost: 'Rp 10.000,-',
      hour: '08.00 - 16.00',
      description:
          'Museum inside a decommissioned Russian war submarine with tours & an adjacent park with cafes. Clean and well maintaned. car park cost 10k, enterance fee 15k/person, you can see KRI pasopati there, it is a russian whiskey class. you can also watch the video about the indonesian navy at the building beside the submarine',
      imageAsset: 'assets/images/submarine.jpg',
      image1: 'assets/images/image1.jpg',
      image2: 'assets/images/image2.jpg',
      image3: 'assets/images/image3.jpg',
    ),
    TourismPlace(
      name: 'Kelenteng Snaggar Agung',
      location: 'Kenjeran',
      open: 'Open Everyday',
      cost: 'Rp 5.000,-',
      hour: '07.00 - 20.00',
      description:
          'Sanggar Agung Temple or Hong San Tang (Chinese: 宏善堂) is a Chinese temple in Surabaya dedicated to Chinese deities and other Asian religious icons. It is located within the Pantai Ria amusement park and has become a tourist destination, even though it is originally a worship place for Tridharma followers. The name of Sanggar Agung is derived from Indonesian language which can be translated as Great Hall.',
      imageAsset: 'assets/images/kelenteng.jpg',
      image1: 'assets/images/image4.jpg',
      image2: 'assets/images/image5.jpg',
      image3: 'assets/images/image6.jpg',
    ),
    TourismPlace(
      name: 'House of Sampoerna',
      location: 'Krembengan Utara',
      open: 'Open Everyday',
      cost: 'Rp 5.000,-',
      hour: '09.00 - 18.00',
      description:
          'Open to the public since October 9, 2003, House of Sampoerna (HoS) is a Dutch colonial-style heritage building complex built in 1862 and located in the “Old Surabaya” area.This complex was initially an orphanage for boys managed by the Dutch. In 1932, it was purchased by Liem Seeng Tee then became the first Sampoerna’s production facility.House of Sampoerna complex consists of a large central auditorium, two smaller buildings in the East and West wings.These outbuildings were used for tobacco and cloves processing inclusive of blending, rolling, packing, printing up to become finished goods. In 2002, the central auditorium and two smaller buildings in The East and West wings were carefully restored.The central auditorium currently serves as a Museum, while The East wing has been transformed into a unique building for The Café and Gift Shop and The West wing is currently an exhibition hall of Galeri Paviliun and The Residence.',
      imageAsset: 'assets/images/House.jpg',
      image1: 'assets/images/image7.jpg',
      image2: 'assets/images/image8.jpg',
      image3: 'assets/images/image9.jpg',
    ),
    TourismPlace(
      name: 'Museum 10 November',
      location: 'jl pahlawan',
      open: 'Open Everyday',
      cost: 'Rp 5.000,-',
      hour: '08.00 - 16.00',
      description:
          'The Heroes Monument is a monument in Surabaya, Indonesia. It is the main symbol of the city, dedicated to the people who died during the Battle of Surabaya on 10 November 1945. The 10 November Museum is located under the monument.The groundbreaking was led by Sukarno, the first Indonesian President, accompanied by Surabaya Mayor, Doel Arnowo on 10 November 1951. It was officially opened one year later, also by Sukarno, on 10 November 1952 witnessed by Surabaya Mayor, R. Moestadjab Soemowidigdo.The 10 November Museum was built to explain the meaning behind the Heroes Monument. The building consists of 2 floors, with exhibitions symbolizing the spirit of the Surabayan people struggle. There is an auditorium on the first floor. The museum contains reproductions of documentary photographs, and there are dioramas that presents eight events that happened around the 10 November 1945 clashes.',
      imageAsset: 'assets/images/museum.jpg',
      image1: 'assets/images/image10.jpg',
      image2: 'assets/images/image11.jpg',
      image3: 'assets/images/image12.jpg',
    ),
    TourismPlace(
      name: 'Suroboyo Bridge',
      location: ' Jl. Pantai Kenjeran No.600',
      open: 'Open Everyday',
      cost: 'Free',
      hour: '06.00 - 21.00',
      description:
          'Suroboyo Bridge is a through arch bridge across the coastal area of Eastern Surabaya in Kenjeran Beach, District Kenjeran, Surabaya, East Java, Indonesia. This bridge has a length of 800 meters with a width of 18 meters and a height of 12 meters which is held with 150 stakes. The design of the bridge is built in a circle with a view of the fountain in the center of bridge.',
      imageAsset: 'assets/images/suroboyo.jpg',
      image1: 'assets/images/image13.jpg',
      image2: 'assets/images/image14.jpg',
      image3: 'assets/images/image15.jpg',
    ),
  ];
  // _TourismListState(this.doneTourismPlaceList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
            builder: (context, DoneTourismProvider data, widget) {
              return ListItem(
                place: place,
                isDone: data.doneTourismPlaceList.contains(place),
                onCheckboxClick: (bool? value) {
                  setState(() {
                    if (value != null) {
                      value
                          ? data.doneTourismPlaceList.add(place)
                          : data.doneTourismPlaceList.remove(place);
                    }
                  });
                },
              );
            },
          ),

          // child: ListItem(
          //   place: place,
          //   isDone: doneTourismPlaceList.contains(place),
          //   onCheckboxClick: (bool? value) {
          //     setState(() {
          //       if (value != null) {
          //         value
          //             ? doneTourismPlaceList.add(place)
          //             : doneTourismPlaceList.remove(place);
          //       }
          //     });
          //   },
          // ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}
