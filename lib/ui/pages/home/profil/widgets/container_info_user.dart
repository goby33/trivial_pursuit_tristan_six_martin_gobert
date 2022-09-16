import 'package:flutter/material.dart';

class ContainerInfoUser extends StatelessWidget {
  ContainerInfoUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(255, 221, 210, 1),
          borderRadius: BorderRadius.circular(30)),
      height: 230,
      width: 270,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50, bottom: 5),
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
            padding: EdgeInsets.only(bottom: 10),
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


          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed))
                    return Color.fromRGBO(131, 197, 190, 1);
                  return Color.fromRGBO(0, 109, 119,1); // Use the component's default.
                },
              ),
            ), onPressed: () { print("redirection update profil"); },
            child: Text("Modifier le profil"),
          )
        ],
      ),
    );
  }
}
