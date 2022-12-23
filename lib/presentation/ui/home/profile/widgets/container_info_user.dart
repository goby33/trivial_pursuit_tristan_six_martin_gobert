import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/profile_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/style/theme_service.dart';

class ContainerInfoUser extends StatelessWidget {
  final String name;
  final String uid;
  const ContainerInfoUser({
    Key? key,
    required this.name,
    required this.uid,
  }) : super(key: key);

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
              text: TextSpan(
                text: "Hello ",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: name,
                    style: const TextStyle(
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
              text: TextSpan(
                text: "Player n°",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: uid,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).primaryColor,
                ),
              ),
              onPressed: () {},
              child: const Text("Modifier le profil"),
            ),
            PopupMenuButton<int>(
              onSelected: (value) {
                if (value == 1) {
                  context.read<ProfileCubit>().signOut();
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
            )
          ])
        ],
      ),
    );
  }
}
