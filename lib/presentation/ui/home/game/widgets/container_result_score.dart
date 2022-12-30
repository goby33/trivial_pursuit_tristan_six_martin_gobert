import 'package:flutter/material.dart';

class ContainerResultScore extends StatelessWidget {
  final String label;
  final int value;
  final IconData icon;
  ContainerResultScore({
    Key? key,
    required this.label,
    required this.value,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(131, 197, 190, 1),
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.headline6,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: "+" , style: Theme.of(context).textTheme.headline6),
                TextSpan(text: value.toString() +" ", style: Theme.of(context).textTheme.headline5),
                WidgetSpan(child: Icon(icon, color: Color.fromRGBO(250, 192, 94, 1),)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
