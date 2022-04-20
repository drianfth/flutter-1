import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/detail_screen.dart';
import '/main_screen.dart';
import '/provider/done_tourism_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Korean Tourism Place',
      theme: ThemeData(),
      home: MainScreen(),
    );
    // return ChangeNotifierProvider(
    //   create: (context) => DoneTourismProvider(),
    //   child: MaterialApp(
    //     title: 'Contacts',
    //     theme: ThemeData(),
    //     home: MainScreen(),
    //   ),
    // );
  }
}
