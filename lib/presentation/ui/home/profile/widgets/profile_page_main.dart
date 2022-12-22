import 'package:flutter/material.dart';

import 'card_statistiques.dart';

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
    return Expanded(
      child: GridView.count(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        primary: false,
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: 2,
        children:  [
          const CardStatistiques(
            text: "fois dans le top 3",
            value: 1,
            icon: Icons.emoji_events,
            colorIcons: Color.fromARGB(252, 191, 73, 1),
          ),
          CardStatistiques(
            text: "question réussites",
            value: numberGoodAnswers,
            icon: Icons.access_alarm,
            colorIcons: const Color.fromARGB(10, 10, 10, 1),
          ),
          CardStatistiques(
            text: "Scores",
            value: score,
            icon: Icons.bolt,
            colorIcons: const Color.fromARGB(252, 246, 189, 1),
          ),
          CardStatistiques(
            text: "Jours d'activité",
            value: numberDayLogged,
            icon: Icons.access_alarm,
            colorIcons: const Color.fromRGBO(76, 201, 240, 1),
          ),
        ],
      ),
    );
  }
}
