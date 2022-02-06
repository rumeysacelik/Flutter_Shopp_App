import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Gordita",
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: bgColor,
          textTheme:
              const TextTheme(bodyText2: TextStyle(color: Colors.black))),
      home: const HomeScreen(),
    );
  }
}
