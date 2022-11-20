import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:trivial_pursuit_app/presentation/style/theme_service.dart';

class ContainerInfoUser extends StatefulWidget {
  const ContainerInfoUser({Key? key}) : super(key: key);

  @override
  State<ContainerInfoUser> createState() => _ContainerInfoUserState();
}

class _ContainerInfoUserState extends State<ContainerInfoUser> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 221, 210, 1),
          borderRadius: BorderRadius.circular(30)),
      height: 230,
      width: 270,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 5),
            child: RichText(
              text: const TextSpan(
                text: "Hello Mr ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Martin',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: RichText(
              text: const TextSpan(
                text: "Joueur n°",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '6789054567890',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return const Color.fromRGBO(131, 197, 190, 1);
                      }
                      return const Color.fromRGBO(
                          0, 109, 119, 1); // Use the component's default.
                    },
                  ),
                ),
                onPressed: () {
                  if (kDebugMode) {
                    print("redirection update profil");
                  }
                },
                child: const Text("Modifier le profil"),
              ),
              PopupMenuButton<int>(
                onSelected: (value) {
                  if (value == 1) {
                    if (kDebugMode) {
                      print("log out");
                    }
                  } else {
                    ThemeService().switchTheme();
                  }
                },
                icon: const Icon(Icons.settings),
                itemBuilder: (BuildContext context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: Icon(Icons.logout),
                      title: Text('Log Out'),
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: const Icon(Icons.dark_mode),
                      title: Text(ThemeService().getStringTheme()),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
