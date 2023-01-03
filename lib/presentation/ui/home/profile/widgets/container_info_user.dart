import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/profile_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/setting_cubit.dart';

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
    final bloc = context.read<ProfileCubit>();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Player n° : ",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  )),
              Flexible(
                child: Text(uid,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
              ),
            ],
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
                  bloc.signOut();
                }
                 else if (value == 2) {
                  bloc.deleteAccount();
                } else {
                   context.read<SettingCubit>().changeTheme();
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
                const PopupMenuItem(
                  value: 2,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Icon(Icons.delete_forever),
                    title: Text('Delete Account'),
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    leading: const Icon(Icons.dark_mode),
                    title: Text('ppppp'),
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
