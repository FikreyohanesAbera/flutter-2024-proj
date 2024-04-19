import 'package:flutter/material.dart';

class DateField extends StatelessWidget {
  final TextEditingController dateController;
  final bool isDateFocused;
  final bool isTimeFocused;

  const DateField({
    required this.dateController,
    required this.isDateFocused,
    required this.isTimeFocused,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {
        // Logic remains the same as before
      },
      controller: dateController,
      readOnly: true,
      style: TextStyle(
        color: isDateFocused ? Colors.white : Color.fromRGBO(159, 188, 204, 1),
        fontSize: isDateFocused ? 20 : 20,
      ),
      decoration: InputDecoration(
        labelText: 'Date',
        labelStyle: TextStyle(
          color:
              isDateFocused ? Colors.white : Color.fromRGBO(159, 188, 204, 1),
          fontSize: isDateFocused ? 24 : 23,
        ),
        prefixIcon: const Icon(
          Icons.date_range,
          color: Color.fromRGBO(245, 154, 123, 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
              color: Color.fromRGBO(159, 188, 204, 1), width: 1.8),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.blue, width: 3),
        ),
        contentPadding: const EdgeInsets.all(25),
      ),
    );
  }
}
