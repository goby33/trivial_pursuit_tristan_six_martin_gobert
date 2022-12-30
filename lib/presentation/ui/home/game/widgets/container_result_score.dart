import 'package:flutter/material.dart';

class ContainerResultScore extends StatelessWidget {
  final String label;
  final int value;
  ContainerResultScore({
    Key? key,
    required this.label,
    required this.value,
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
          Text(
            "+" + value.toString(),
            style: Theme.of(context).textTheme.headline5,
          ),
        ],
      ),
    );
  }
}
