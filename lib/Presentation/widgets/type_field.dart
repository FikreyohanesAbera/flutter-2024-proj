import 'package:flutter/material.dart';

class TypeField extends StatelessWidget {
  final String typeValue;
  final void Function(bool) onTypeSelected;

  const TypeField({
    required this.typeValue,
    required this.onTypeSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        ChoiceChip(
          label: const Padding(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 4),
            child: Text(
              'Business',
              style: TextStyle(fontSize: 19),
            ),
          ),
          selected: typeValue == 'Business',
          onSelected: onTypeSelected,
          selectedColor: const Color.fromRGBO(0, 224, 231, 1),
          backgroundColor: const Color.fromRGBO(0, 147, 148, 1),
        ),
        const SizedBox(width: 10),
        ChoiceChip(
          label: const Padding(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 4),
            child: Text(
              'Non-Business',
              style: TextStyle(fontSize: 19),
            ),
          ),
          selected: typeValue == 'Non-Business',
          onSelected: onTypeSelected,
          selectedColor: const Color.fromRGBO(0, 224, 231, 1),
          backgroundColor: const Color.fromRGBO(0, 147, 148, 1),
        ),
      ],
    );
  }
}
