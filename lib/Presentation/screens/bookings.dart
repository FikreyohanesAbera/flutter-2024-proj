import 'package:flutter/material.dart';
import './ExpandedBooking.dart';
import '../widgets/My_bookingsState.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reservation Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/detail': (context) => const ExpandedBooking(),
      },
      home: const MyBookings(),
    );
  }
}
