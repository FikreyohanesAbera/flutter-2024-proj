import 'package:flutter/material.dart';
import './reserve.dart';

class ReservationFormPage extends StatefulWidget {
  const ReservationFormPage({Key? key}) : super(key: key);

  @override
  _ReservationFormPageState createState() => _ReservationFormPageState();
}

class _ReservationFormPageState extends State<ReservationFormPage> {
  final TextEditingController _numberOfPeopleController =
      TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  String _typeValue = '';
  bool _isDateFocused = false;
  bool _isTimeFocused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reservation Form'),
      ),
      backgroundColor: const Color.fromRGBO(8, 68, 104, 1),
      body: ReservationForm(
        numberOfPeopleController: _numberOfPeopleController,
        dateController: _dateController,
        timeController: _timeController,
        typeValue: _typeValue,
        isDateFocused: _isDateFocused,
        isTimeFocused: _isTimeFocused,
        onTypeSelected: (selected) {
          setState(() {
            _typeValue = selected ? 'Business' : '';
          });
        },
      ),
    );
  }
}
