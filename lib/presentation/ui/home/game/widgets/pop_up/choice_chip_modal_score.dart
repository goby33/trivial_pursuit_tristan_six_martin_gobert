import 'package:flutter/material.dart';

class ChoiceChipModal extends StatelessWidget {
  final bool isSelected;
  final String label;
  final IconData  icon;
  final Function(bool isSelected)? onSelected;

  ChoiceChipModal({
    Key? key,
    required this.isSelected,
    required this.label,
    this.onSelected,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      labelPadding:
          const EdgeInsets.only(top: 1.0, left: 10.0, right: 3.0, bottom: 1.0),
      backgroundColor: Color.fromRGBO(255, 221, 210, 1),
      elevation: 1,
      pressElevation: 5,
      selected: isSelected,
      selectedColor: Color.fromRGBO(226, 149, 120, 1),
      padding: const EdgeInsets.all(10.0),
      label: Text(label),
      avatar: Icon(icon),
      onSelected: (bool selected) {
        if (selected) {
          onSelected!(selected);
        }
      },
    );
  }
}
