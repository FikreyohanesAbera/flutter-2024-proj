import 'package:flutter/material.dart';
import './bookingsClass.dart';
import './ExpandedBooking.dart';

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

class MyBookings extends StatefulWidget {
  const MyBookings({Key? key}) : super(key: key);

  @override
  _MyBookingsState createState() => _MyBookingsState();
}

class _MyBookingsState extends State<MyBookings> {
  List<ReservedTable> tables = [
    ReservedTable(
        2, "2024-13-04", "11:34", "Business", "assets/buna.jpeg", "Buna"),
    ReservedTable(7, "2024-14-09", "01:00", "Non-Business",
        "assets/beyaynet.png", "Beyaynet"),
    ReservedTable(
        22, "2024-05-04", "5:09", "Business", "assets/pasta.jpeg", "Pasta")
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = (MediaQuery.of(context).size.width);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "My Bookings",
          ),
        ),
      ),
      backgroundColor: const Color(0xff101520),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Center(
          child: SizedBox(
            width: screenWidth - 20,
            child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 10);
              },
              itemCount: tables.length,
              itemBuilder: (BuildContext context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    color: const Color(0xff182032),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 130,
                            child: Row(children: [
                              SizedBox(
                                width: 170,
                                // height: 150,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    "${tables[index].imageUrl}",
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Column(
                                children: [
                                  const SizedBox(height: 20),
                                  Text(
                                    "${tables[index].food}",
                                    style: const TextStyle(
                                        color: Colors.amberAccent,
                                        fontSize: 24),
                                  ),
                                  const SizedBox(height: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 5.0),
                                      Text(
                                        'Type: ${tables[index].type}', // Replace with actual type
                                        style: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 202, 193, 193)),
                                      ),
                                      const SizedBox(height: 5.0),
                                      Text(
                                        'Number of Guests: ${tables[index].guests}', // Replace with actual number of seats
                                        style: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 202, 193, 193)),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ]),
                          ),
                          const Divider(
                            thickness: 1.4,
                            color: Colors.lightGreen,
                          ),
                          Row(
                            children: [
                              OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                    color: Color.fromARGB(
                                        153, 56, 231, 202), // Change color here
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/detail');
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  // ignore: unnecessary_const
                                  child: const Text(
                                    "View Reservation",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(153, 56, 231, 202)),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                    color: Color.fromARGB(
                                        255, 221, 77, 89), // Change color here
                                  ),
                                ),
                                onPressed: () {},
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Cancel Reservation",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 221, 77, 89)),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
