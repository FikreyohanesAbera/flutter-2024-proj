// import 'package:flutter/material.dart';

// class TextFormFieldClass extends StatelessWidget {
//   const TextFormFieldClass({Key? key, bool? isDateFocused, bool? isTimeFocused})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       onTap: () {
//         setState(() {
//           this.isDateFocused = false;
//           isTimeFocused = false;
//         });
//       },
//       controller: _numberOfPeopleController,
//       keyboardType: TextInputType.number,
//       style: const TextStyle(
//         color: Color.fromRGBO(159, 188, 204, 1),
//         fontSize: 20,
//       ),
//       decoration: InputDecoration(
//         labelText: 'Number of People',
//         labelStyle: TextStyle(
//           color: !(_isDateFocused || _isTimeFocused)
//               ? Colors.white
//               : Color.fromRGBO(159, 188, 204, 1),
//           fontSize: !(_isDateFocused || _isTimeFocused)
//               ? 24
//               : 22, // Increase label font size when focused
//         ),
//         prefixIcon: const Icon(
//           Icons.people,
//           color: Color.fromRGBO(245, 154, 123, 1),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//           borderSide: const BorderSide(
//               color: Color.fromRGBO(159, 188, 204, 1), width: 1.8),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//           borderSide: const BorderSide(color: Colors.blue, width: 3),
//         ),
//         contentPadding: const EdgeInsets.all(25),
//       ),
//       validator: (value) {
//         if (value?.isEmpty ?? true) {
//           return 'Please enter the number of people';
//         }
//         int? numberOfPeople = int.tryParse(value!);
//         if (numberOfPeople == null) {
//           return 'Please enter a valid number';
//         }
//         if (numberOfPeople > 35) {
//           return 'Maximum number of people exceeded';
//         }
//         return null;
//       },
//     );
//   }
// }
