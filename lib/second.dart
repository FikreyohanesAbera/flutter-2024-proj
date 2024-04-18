import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child:
                  Text("BMI Calculator")), // Removed const from Center and Text
          backgroundColor: Colors.purple,
        ),
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            const ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Shopping Cart"),
              subtitle: Text("verify your quantity and checkout"),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/food.jpeg",
                    ),
                  ),
                  title: const Text(
                    "Calas",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: const Text(
                    "\$15.00",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black87),
                  ),
                  trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color:
                                  Colors.black, // Adjust border color as needed
                              width: 1, // Adjust border width as needed
                            ),
                          ),
                          child: const Icon(
                            Icons.add,
                            size: 15, // Adjust icon size as needed
                          ),
                        ),
                        const Text("1.0"),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color:
                                  Colors.black, // Adjust border color as needed
                              width: 1, // Adjust border width as needed
                            ),
                          ),
                          child: const Icon(
                            Icons.remove,
                            size: 15, // Adjust icon size as needed
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/food.jpeg",
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Angel Hair",
                        style:
                            TextStyle(color: Color.fromARGB(255, 47, 53, 73)),
                      ),
                      Text(
                        "Salmon Mozzarella",
                        style: TextStyle(
                            color: Color.fromARGB(115, 97, 105, 146),
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "\$22.99",
                        style: TextStyle(
                            color: Color.fromRGBO(28, 48, 48, 1), fontSize: 20),
                      )
                    ],
                  ),
                  trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color:
                                  Colors.black, // Adjust border color as needed
                              width: 1, // Adjust border width as needed
                            ),
                          ),
                          child: const Icon(
                            Icons.add,
                            size: 15, // Adjust icon size as needed
                          ),
                        ),
                        const Text("2.0"),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color:
                                  Colors.black, // Adjust border color as needed
                              width: 1, // Adjust border width as needed
                            ),
                          ),
                          child: const Icon(
                            Icons.remove,
                            size: 15, // Adjust icon size as needed
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            const Expanded(
              child: SizedBox(), // Empty SizedBox to take remaining space
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Subtotal'),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Checkout'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
