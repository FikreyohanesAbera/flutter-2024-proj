import 'package:flutter/material.dart';

class BranchField extends StatelessWidget {
  final String branchValue;
  final void Function(bool, String) onBranchSelected;

  const BranchField({
    required this.branchValue,
    required this.onBranchSelected,
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
              'Arat kilo',
              style: TextStyle(fontSize: 19),
            ),
          ),
          selected: branchValue == 'Arat kilo',
          onSelected: (selected) {
            if (selected) onBranchSelected(true, 'Arat kilo');
          },
          selectedColor: const Color.fromRGBO(0, 224, 231, 1),
          backgroundColor: const Color.fromRGBO(0, 147, 148, 1),
        ),
        const SizedBox(width: 7),
        ChoiceChip(
          label: const Padding(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 4),
            child: Text(
              'Tor Hailoch',
              style: TextStyle(fontSize: 19),
            ),
          ),
          selected: branchValue == 'Tor Hailoch',
          onSelected: (selected) {
            if (selected) onBranchSelected(true, "Tor Hailoch");
          },
          selectedColor: const Color.fromRGBO(0, 224, 231, 1),
          backgroundColor: const Color.fromRGBO(0, 147, 148, 1),
        ),
        const SizedBox(width: 7),
        ChoiceChip(
          label: const Padding(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 4),
            child: Text(
              'Mexico',
              style: TextStyle(fontSize: 19),
            ),
          ),
          selected: branchValue == 'Mexico',
          onSelected: (selected) {
            if (selected) onBranchSelected(true, "Mexico");
          },
          selectedColor: const Color.fromRGBO(0, 224, 231, 1),
          backgroundColor: const Color.fromRGBO(0, 147, 148, 1),
        ),
      ],
    );
  }
}
