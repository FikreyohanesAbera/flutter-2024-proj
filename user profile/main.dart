import 'package:flutter/material.dart';
import 'package:user_profile/lib/pages/profie_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your App Name',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue[900],
        ),
      ),
      darkTheme: ThemeData.dark(),
      home: ProfilePage(),
    );
  }
}
