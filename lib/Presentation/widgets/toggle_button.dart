import 'package:flutter/material.dart';

class ToggleButton extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback toggleTheme;

  const ToggleButton({super.key, required this.isDarkMode, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        icon: isDarkMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode),
        onPressed: toggleTheme,
      ),
    );
  }
}
