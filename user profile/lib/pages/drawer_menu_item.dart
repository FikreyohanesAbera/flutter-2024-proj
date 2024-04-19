import 'package:flutter/material.dart';

class DrawerMenuItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  DrawerMenuItem({
    Key? key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
    );
  }
}
