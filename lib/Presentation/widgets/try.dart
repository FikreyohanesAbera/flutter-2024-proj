import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circular Food Table',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CircularFoodTable(),
    );
  }
}

class CircularFoodTable extends StatefulWidget {
  @override
  _CircularFoodTableState createState() => _CircularFoodTableState();
}

class _CircularFoodTableState extends State<CircularFoodTable>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _rotationAnimation;
  double _rotationAngle = 0.0;
  List<Widget> dishes = [];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
    );
    _rotationAnimation = Tween<double>(
      begin: 0.0,
      end: 0.0,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
        setState(() {
          _rotationAngle = _rotationAnimation.value;
        });
      });
    _buildDishesAroundTable();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _rotateTable(double angle) {
    double targetAngle =
        (_rotationAngle + (4 * angle)) % (2 * pi); // Double the angle parameter

    _rotationAnimation = Tween<double>(
      begin: _rotationAngle,
      end: targetAngle,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    _animationController.reset();
    _animationController.duration =
        Duration(milliseconds: 900); // Restore original animation duration
    _animationController.forward();

    _rotationAngle = targetAngle;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circular Food Table'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _rotationAngle,
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.brown,
                    ),
                    child: Stack(
                      children: dishes,
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    _rotateTable(-pi / 8); // Rotate clockwise
                  },
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    _rotateTable(pi / 8); // Rotate counterclockwise
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _buildDishesAroundTable() {
    dishes.clear(); // Clear existing dishes

    double radius = 120;
    double dishAngleIncrement =
        2 * pi / 4; // Change dish angle increment to create 4 dishes

    for (int i = 0; i < 4; i++) {
      // Change loop condition to create 4 dishes
      double currentAngle =
          dishAngleIncrement * i + _rotationAngle; // Consider rotation angle
      double offsetX = radius * cos(currentAngle);
      double offsetY = radius * sin(currentAngle);

      dishes.add(
        Positioned(
          top: 150 + offsetY - 20,
          left: 150 + offsetX - 20,
          child: _buildDishWidget(i),
        ),
      );
    }
  }

  Widget _buildDishWidget(int index) {
    return GestureDetector(
      onTap: () {
        _rotateTable((pi / 8) * (index - 4));
      },
      child: Image.asset(
        'assets/doro.png',
        width: 40,
        height: 40,
      ),
    );
  }
}
