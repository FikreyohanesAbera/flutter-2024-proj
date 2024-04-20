import 'package:flutter/material.dart';
import './Presentation/screens/about.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'this is demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff101520), Color(0xff101520)])),
      child: MaterialApp(
        title: 'Traditional Restaurant Website',
        home: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.amberAccent,
            title: const Text(
              'Traditional Booking',
              style: TextStyle(
                fontFamily: 'C',
                fontSize: 25,
                color: Color.fromARGB(153, 56, 231, 202),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage('assets/totot.jpg'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            const Color.fromARGB(255, 221, 77, 89)
                                .withOpacity(0.1),
                            BlendMode.lighten,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Traditional Booking',
                              style: TextStyle(
                                color: Color.fromARGB(255, 202, 193, 193),
                                fontSize: 40,
                                fontFamily: "B",
                                shadows: [
                                  Shadow(
                                    blurRadius: 20.0,
                                    color: Color(0xff101520),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 30),
                            RichText(
                              text: TextSpan(
                                children: [
                                  for (int i = 0; i < 'WELCOME'.length; i++)
                                    TextSpan(
                                      text: 'WELCOME'[i],
                                      style: TextStyle(
                                        color: _getColorForLetter(i),
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: const Color(0xff182032),
                  alignment: Alignment.center,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Discover Our Reservation",
                          style: TextStyle(
                            color: Color.fromARGB(255, 221, 77, 89),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "Types",
                          style: TextStyle(
                            color: Color.fromARGB(255, 221, 77, 89),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          color:const Color.fromARGB(255, 202, 193, 193),
                          child: SizedBox(
                            height: 450,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                _buildCard(
                                  'Business Type',
                                  'We offer reservation system for people starting from 1 to 20 in need of having cultural Ehiopian cusine, while discussing crucial business matters',
                                  'assets/business.jpg',
                                ),
                                _buildCard(
                                  'Family Type',
                                  'You can reserve a table with the specific number of people in your family. Have a wonderfull time with them without worrying about details of reservations.',
                                  'assets/B.jpg',
                                ),
                                _buildCard(
                                  'for different reunions',
                                  'We are happy to tell you that you can reserve tables and reunite with your friends. You dont have to worry about anything. You are only one call Away',
                                  'assets/D.jpg',
                                ),
                                _buildCard(
                                  'Romantic Dates for couples',
                                  'Have a wonderful time with your loved ones. Just be ready to arrive in time. One Click Away!!! ',
                                  'assets/couple.jpeg',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  transform: Matrix4.rotationZ(0.1),
                  width: 300,
                  height: 200,
                  child: Image.asset(
                    'assets/D.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const AboutPage()));
                        },
                        child: const Text("About Us"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 221, 183, 77),
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Popular foods on tables",
                      style: TextStyle(
                        color: Color.fromARGB(255, 221, 77, 89),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildFoodImage('assets/A.jpg'),
                      _buildFoodImage('assets/B.jpg'),
                      _buildFoodImage('assets/D.jpg'),
                      _buildFoodImage('assets/E.jpg'),
                    ],
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

Color _getColorForLetter(int index) {
  List colors = [
    const Color.fromARGB(255, 0, 196, 16),
    const Color.fromARGB(255, 242, 247, 1),
    const Color.fromARGB(255, 255, 105, 36),
    const Color.fromARGB(255, 0, 89, 255),
    const Color.fromARGB(255, 255, 105, 36),
    const Color.fromARGB(255, 242, 247, 1),
    const Color.fromARGB(255, 0, 196, 16)
  ];
  return colors[index % colors.length];
}

Widget _buildCard(String title, String description, String imagePath) {
  return SizedBox(
    width: 300,
    child: Card(
      color:const Color.fromARGB(255, 100, 99, 95),
      elevation: 1,
      margin:const EdgeInsets.all(11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding:const EdgeInsets.all(11),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style:const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "A",
                      fontSize: 20),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon:const Icon(Icons.share),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon:const Icon(Icons.favorite),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildFoodImage(String imagePath) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        imagePath,
        height: 180,
        width: 180,
        fit: BoxFit.cover,
      ),
    ),
  );
}
