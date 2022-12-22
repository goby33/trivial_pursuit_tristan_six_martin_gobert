import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/profile_cubit.dart';

class ContainerInfoUser extends StatelessWidget {
  final String name;
  const ContainerInfoUser({Key? key, required this.name}) : super(key: key);

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
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromRGBO(131, 197, 190, 1)),
              ),
              onPressed: () {},
              child: const Text("Modifier le profil"),
            ),
            PopupMenuButton<int>(
              onSelected: (value) {
                if (value == 1) {
                  context.read<ProfileCubit>().signOut();
                }
              },
              icon: const Icon(Icons.settings),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text("Log out"),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("Changer de thème"),
                ),
              ],
            )
          ])
        ],
      ),
    );
  }
}
