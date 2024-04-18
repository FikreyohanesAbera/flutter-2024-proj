import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './widgets/bookingDetail.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ExpandedBooking());
}

class ExpandedBooking extends StatefulWidget {
  const ExpandedBooking({Key? key}) : super(key: key);
  @override
  _ExpandedBookingState createState() => _ExpandedBookingState();
}

class _ExpandedBookingState extends State<ExpandedBooking> {
  late DateTime _RemainingTime = DateTime.now();

  @override
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _RemainingTime = DateTime.now();
    // Update the Remaining time every second
    _timer = Timer.periodic(const Duration(seconds: 1), _updateTime);
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  void _updateTime(Timer timer) {
    setState(() {
      _RemainingTime = DateTime.now();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Booking Details"),
      ),
      body: Container(
        // color: Color(0xffd1ede1),
        child: Stack(
          children: [
            ListView(
              children: [
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                          height: 170, child: Image.asset("assets/woman.png")),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.timer,
                            color: Color.fromRGBO(33, 34, 33, 1),
                            size: 28.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              '${_RemainingTime.hour}:${_RemainingTime.minute}:${_RemainingTime.second}',
                              style: const TextStyle(
                                  fontSize: 25,
                                  color: Color.fromRGBO(33, 34, 33, 1)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Time Remaining",
                        style: TextStyle(
                            color: Color.fromRGBO(24, 24, 23, 0.957),
                            fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(1, 0, 1, 0),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(32.0),
                            topRight: Radius.circular(32.0),
                          ),
                          child: Container(
                            // width: 520,
                            color: const Color(0xFF028C6A),
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Pasta",
                                      style: GoogleFonts.amita(
                                          fontSize: 45,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xff003e19)),
                                    ),
                                    Container(
                                      width: 140,
                                      child: Image.asset('assets/tibs.png'),
                                    ),
                                  ],
                                ),
                                // const SizedBox(
                                //   height: 5,
                                // ),

                                const SizedBox(width: 40),
                                const SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFF028C6A),
                                      borderRadius: BorderRadius.circular(6),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0xffd1ede1),
                                          spreadRadius: 1,
                                          blurRadius: 1,
                                          offset: Offset(-1,
                                              0), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        // const SizedBox(width: 20),
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    "Type",
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255,
                                                            140,
                                                            211,
                                                            182)),
                                                  ),
                                                  SizedBox(
                                                    height: 3,
                                                  ),
                                                  Text(
                                                    "Business",
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 32, 39, 37),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18),
                                                  )
                                                ]),
                                          ),
                                        ),
                                        // const SizedBox(width: 10),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Icon(
                                              Icons.people,
                                              size: 35,
                                              color: Color(0xff003e19),
                                            ),
                                            SizedBox(width: 7),
                                            Text(
                                              "3",
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Color(0xffd1ede1)),
                                            )
                                          ],
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  "Branch",
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 140, 211, 182)),
                                                ),
                                                SizedBox(
                                                  height: 3,
                                                ),
                                                Text(
                                                  "Arat kilo",
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 32, 39, 37),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18),
                                                )
                                              ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.timelapse_outlined,
                                      color: Color.fromARGB(255, 243, 255, 82),
                                      size: 24,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 134, 180, 163),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Text(
                                          '${_RemainingTime.hour}:${_RemainingTime.minute}:${_RemainingTime.second}',
                                          style: const TextStyle(
                                              fontSize: 18,
                                              color: Color.fromRGBO(
                                                  33, 34, 33, 1)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 55),

                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Container(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              30), // Adjust the value as needed
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        'Modify Booking',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              width: 150,
              left: 138,
              top: 145,
              child: Container(
                  // decoration: BoxDecoration(
                  //   shape: BoxShape.circle,
                  //   border: Border.all(
                  //     color: const Color.fromRGBO(
                  //         48, 45, 45, 0.957), // Border color
                  //     width: 3.5, // Border width
                  //   ),
                  // ),
                  // child: const CircleAvatar(
                  //   radius: 45,
                  //   backgroundImage: AssetImage("assets/pasta.jpeg"),
                  // ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
