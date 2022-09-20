import 'package:flutter/material.dart';

class CardStatistiques extends StatelessWidget {
  CardStatistiques({
    required this.text,
    required this.value,
    required this.icon,
    Key? key, required  this.colorIcons,
  }) : super(key: key);

  final String text;
  final int value;
  final IconData icon;
  final Color colorIcons;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              icon,
              color: colorIcons,
              size: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(value.toString(), style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
                Text(text),
              ],
            )
          ],
        ),
      ),
    );
  }
}
