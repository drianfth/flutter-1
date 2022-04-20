import 'dart:html';

import 'model/tourism_place.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/tourism_place.dart';
import 'package:url_launcher/url_launcher.dart';

class Create extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = TextEditingController();
    final description = TextEditingController();
    final openDay = TextEditingController();
    final openTime = TextEditingController();
    final price = TextEditingController();
    final img = TextEditingController();
    final img1 = TextEditingController();
    final img2 = TextEditingController();
    final img3 = TextEditingController();
    final location = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Tambahkan Data'),
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    //img1
                    margin:
                        new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Image Utama',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: img,
                        )
                      ],
                    )),
                Container(
                    //title
                    margin:
                        new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Title',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: title,
                        )
                      ],
                    )),
                Container(
                    //location
                    margin:
                        new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'location',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: location,
                        )
                      ],
                    )),
                Container(
                    //openDay
                    margin:
                        new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Open Day',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: openDay,
                        )
                      ],
                    )),
                Container(
                    //openTime
                    margin:
                        new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Open Time',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: openTime,
                        )
                      ],
                    )),
                Container(
                    //price
                    margin:
                        new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Price',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: price,
                        )
                      ],
                    )),
                Container(
                    //Description
                    margin:
                        new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          maxLines: 8,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Description',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: description,
                        )
                      ],
                    )),
                Container(
                    //image1
                    margin:
                        new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Image 1',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: img1,
                        )
                      ],
                    )),
                Container(
                    //image2
                    margin:
                        new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Image 2',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: img2,
                        )
                      ],
                    )),
                Container(
                    //image3
                    margin:
                        new EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Image 3',
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          controller: img3,
                        )
                      ],
                    )),
                Container(
                    //Save Button
                    margin: new EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 30, bottom: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            var url = Uri.parse(
                                'http://192.168.1.15:8080/flutter/api.php');
                            var response = await http.post(url, body: {
                              'action': 'create',
                              'location': location.text,
                              'title': title.text,
                              'description': description.text,
                              'openDay': openDay.text,
                              'openTime': openTime.text,
                              'price': price.text,
                              'img': img.text,
                              'img1': img1.text,
                              'img2': img2.text,
                              'img3': img3.text
                            });
                            if (response.statusCode == 200) {
                              var count = 0;
                              Navigator.popUntil(context, (route) {
                                return count++ == 1;
                              });
                            } else {
                              throw Exception('Failed to load top headlines');
                            }
                          },
                          child: const Text('Save'),
                        ),
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
