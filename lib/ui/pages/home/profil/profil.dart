import 'package:flutter/material.dart';
import 'package:trivial_pursuit_app/ui/pages/home/profil/widgets/card_statistiques.dart';
import 'package:trivial_pursuit_app/ui/pages/home/profil/widgets/circle_photo.dart';
import 'package:trivial_pursuit_app/ui/pages/home/profil/widgets/container_info_user.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 350,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                ),
              ),
              const Positioned(
                top: 100,
                child: ContainerInfoUser(),
              ),
              const Positioned(
                top: 20,
                child: CirclePhoto(
                    urlPhoto:
                        "https://banner2.cleanpng.com/20180625/req/kisspng-computer-icons-avatar-business-computer-software-user-avatar-5b3097fcae25c3.3909949015299112927133.jpg"),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10, left: 15),
          child: Text("Mes Statistiques : ",
              style: Theme.of(context).textTheme.headline1),
        ),
        Expanded(
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
                  colorIcons: Color.fromARGB(252, 191, 73, 1)),
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
        ),
      ],
    );
  }
}
