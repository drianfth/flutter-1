class TourismResult {
  TourismResult({
    required this.status,
    required this.totalResults,
    required this.tourismPlaces,
  });

  String status;
  int totalResults;
  List<TourismPlace> tourismPlaces;

  factory TourismResult.fromJson(Map<String, dynamic> json) => TourismResult(
        status: json["status"],
        totalResults: json["totalResults"],
        tourismPlaces: List<TourismPlace>.from((json["tourismPlaces"] as List)
            .map((x) => TourismPlace.fromJson(x))
            .where((article) =>
                article.title != null &&
                article.description != null &&
                article.openDay != null &&
                article.openTime != null &&
                article.price != null &&
                article.img != null &&
                article.location != null)),
      );
}

class TourismPlace {
  String id;
  String title;
  String description;
  String openDay;
  String openTime;
  String price;
  String img;
  String img1;
  String img2;
  String img3;
  String location;

  TourismPlace(
      {required this.location,
      required this.id,
      required this.title,
      required this.description,
      required this.openDay,
      required this.openTime,
      required this.price,
      required this.img,
      required this.img1,
      required this.img2,
      required this.img3});

  factory TourismPlace.fromJson(Map<String, dynamic> json) => TourismPlace(
      id: json['id'],
      location: json['location'],
      title: json['title'],
      description: json['description'],
      openDay: json['openDay'],
      openTime: json['openTime'],
      price: json['price'],
      img: json['img'],
      img1: json['img1'],
      img2: json['img2'],
      img3: json['img3']);
}


// class TourismPlace {
//   String name;
//   String location;
//   String description;
//   String open;
//   String cost;
//   String hour;
//   String imageAsset;
//   String image1;
//   String image2;
//   String image3;

//   TourismPlace({
//     required this.name,
//     required this.location,
//     required this.description,
//     required this.open,
//     required this.cost,
//     required this.hour,
//     required this.imageAsset,
//     required this.image1,
//     required this.image2,
//     required this.image3,
//   });
// }


