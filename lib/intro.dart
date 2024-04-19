import 'package:flutter/material.dart';

void main() {
  runApp(const Intro());
}

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intro Page',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff182032),
          title: const Text(
            'Hi there',
            style: TextStyle(
              fontFamily: 'A',
              fontSize: 40,
              color: Color.fromARGB(153, 56, 231, 202),
            ),
          ),
        ),
        body: Container(
          color: const Color(0xff182032),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  color: const Color.fromARGB(255, 29, 36, 54),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 70),
                        Container(
                          height: 300,
                          width: 300,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/F.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 60),
                        Center(
                          child: Text(
                            "Manage Your Table",
                            style: TextStyle(
                              fontSize: 35,
                              fontFamily: "B",
                              color: Color.fromARGB(255, 221, 77, 89),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: Text(
                            "Reservation",
                            style: TextStyle(
                              fontSize: 40,
                              fontFamily: "B",
                              color: Color.fromARGB(255, 221, 77, 89),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                    ),
                    child: const Text(
                      "Let's Start",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
