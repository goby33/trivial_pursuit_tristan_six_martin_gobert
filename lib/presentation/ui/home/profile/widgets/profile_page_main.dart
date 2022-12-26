import 'package:flutter/material.dart';

import 'statistics_card.dart';

class ProfilePageMain extends StatelessWidget {
  final int score;
  final int numberGoodAnswers;
  final int numberDayLogged;
  const ProfilePageMain({
    Key? key,
    required this.score,
    required this.numberGoodAnswers,
    required this.numberDayLogged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Statistics : ", style: Theme.of(context).textTheme.headline5),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: SizedBox(),
              ),
              Expanded(
                flex: 3,
                child: StatisticsCard(
                  text: 'Score',
                  value: score,
                  icon: Icons.emoji_events,
                  colorIcons: const Color.fromRGBO(214, 159, 126, 1),
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: StatisticsCard(
                  text: 'Good answers',
                  value: numberGoodAnswers,
                  icon: Icons.bolt,
                  colorIcons: const Color.fromARGB(252, 246, 189, 1),
                ),
              ),
              Expanded(
                child: StatisticsCard(
                  text: 'Days logged',
                  value: numberDayLogged,
                  icon: Icons.access_alarm,
                  colorIcons: const Color.fromRGBO(76, 201, 240, 1),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
