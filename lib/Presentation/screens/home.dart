import 'package:flutter/material.dart';
import 'about.dart';
import '../widgets/custom_card.dart';
import '../widgets/food_image.dart';
import '../widgets/get_color.dart';

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
          colors: [Color(0xff101520), Color(0xff101520)],
        ),
      ),
      child: MaterialApp(
        title: 'Traditional Restaurant Website',
        home: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 61, 233, 218),
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
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Abebe Belete',
                        style: TextStyle(fontSize: 20.0, color: Colors.amber),
                      ),
                      SizedBox(width: 16.0),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage('assets/Avatar.png'),
                      ),
                    ],
                  ),
                ),
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
                                        color: getColorForLetter(i),
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
                          color: const Color.fromARGB(255, 202, 193, 193),
                          child: SizedBox(
                            height: 450,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: const [
                                CustomCardWidget(
                                  title: 'Business Type',
                                  description:
                                      'We offer reservation system for people starting from 1 to 20 in need of having cultural Ehiopian cusine, while discussing crucial business matters',
                                  imagePath: 'assets/business.jpg',
                                ),
                                CustomCardWidget(
                                  title: 'Family Type',
                                  description:
                                      'You can reserve a table with the specific number of people in your family. Have a wonderfull time with them without worrying about details of reservations.',
                                  imagePath: 'assets/B.jpg',
                                ),
                                CustomCardWidget(
                                  title: 'for different reunions',
                                  description:
                                      'We are happy to tell you that you can reserve tables and reunite with your friends. You dont have to worry about anything. You are only one call Away',
                                  imagePath: 'assets/D.jpg',
                                ),
                                CustomCardWidget(
                                  title: 'Romantic Dates for couples',
                                  description:
                                      'Have a wonderful time with your loved ones. Just be ready to arrive in time. One Click Away!!! ',
                                  imagePath: 'assets/couple.jpeg',
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
                Container(
                  color: const Color.fromARGB(255, 29, 40, 63),
                  child: SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        FoodImageWidget(imagePath: 'assets/tibs.png'),
                        FoodImageWidget(imagePath: 'assets/tihilo.jpg'),
                        FoodImageWidget(imagePath: 'assets/Rawmeat.jpg'),
                        FoodImageWidget(imagePath: 'assets/food.jpeg'),
                        FoodImageWidget(imagePath: 'assets/pasta.jpeg'),
                        FoodImageWidget(imagePath: 'assets/Bursame.jpg'),
                        FoodImageWidget(imagePath: 'assets/Rawmeat.jpg'),
                        FoodImageWidget(imagePath: 'assets/doro.png'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 50.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
