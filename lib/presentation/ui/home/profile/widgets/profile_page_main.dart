import 'package:flutter/material.dart';

import 'card_statistiques.dart';

class ProfilePageMain extends StatelessWidget {
  const ProfilePageMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: GridView.count(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        primary: false,
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: 2,
        children: const [
          CardStatistiques(
            text: "fois dans le top 3",
            value: 1,
            icon: Icons.emoji_events,
            colorIcons: Color.fromARGB(252, 191, 73, 1),
          ),
          CardStatistiques(
            text: "question réussites",
            value: 10,
            icon: Icons.access_alarm,
            colorIcons: Color.fromARGB(10, 10, 10, 1),
          ),
          CardStatistiques(
            text: "XP gagnés",
            value: 1100,
            icon: Icons.bolt,
            colorIcons: Color.fromARGB(252, 246, 189, 1),
          ),
          CardStatistiques(
            text: "Jours d'activité",
            value: 1,
            icon: Icons.access_alarm,
            colorIcons: Color.fromRGBO(76, 201, 240, 1),
          ),
        ],
      ),
    );
  }
}
