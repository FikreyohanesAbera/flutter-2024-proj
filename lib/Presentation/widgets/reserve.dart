import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'number_of_people.dart';
import 'date_field.dart';
import 'type_field.dart';
import 'time_field.dart';

class ReservationForm extends StatelessWidget {
  final TextEditingController numberOfPeopleController;
  final TextEditingController dateController;
  final TextEditingController timeController;
  final String typeValue;
  final bool isDateFocused;
  final bool isTimeFocused;
  final void Function(bool) onTypeSelected;

  const ReservationForm({
    required this.numberOfPeopleController,
    required this.dateController,
    required this.timeController,
    required this.typeValue,
    required this.isDateFocused,
    required this.isTimeFocused,
    required this.onTypeSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NumberOfPeopleField(
                numberOfPeopleController: numberOfPeopleController,
                isDateFocused: isDateFocused,
                isTimeFocused: isTimeFocused,
              ),
              const SizedBox(height: 40),
              DateField(
                dateController: dateController,
                isDateFocused: isDateFocused,
                isTimeFocused: isTimeFocused,
              ),
              const SizedBox(height: 40),
              TimeField(
                timeController: timeController,
                isDateFocused: isDateFocused,
                isTimeFocused: isTimeFocused,
              ),
              const SizedBox(height: 20),
              const Text(
                'Type',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              const SizedBox(height: 20),
              TypeField(
                typeValue: typeValue,
                onTypeSelected: onTypeSelected,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
