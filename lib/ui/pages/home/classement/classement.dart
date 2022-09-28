import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Classement extends StatefulWidget {
  const Classement({Key? key}) : super(key: key);

  @override
  State<Classement> createState() => _ClassementState();
}

class _ClassementState extends State<Classement> {
  var items = List<String>.generate(10000, (i) => 'Item $i');
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextField(
          onChanged: (text) {
            if (kDebugMode) {
              print(text);
            }
            /*items.where((element) {
             final itemPseudo = items.pseudo.toLowerCase();
             final inputSearch = text.toLowerCase();
             return itemPseudo.contains(inputSearch);
           }).toList();
           setState(() => items = itemPseudo);*/
          },
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
            hintText: 'Recherché un pseudo',
          )),
      Expanded(
        child: ListView.builder(
          itemCount: items.length,
          prototypeItem: ListTile(
            title: Text(items.first),
          ),
          itemBuilder: (context, index) {
            return ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_960_720.jpg',
                ),
              ),
              title: Text(items[index]),
              subtitle: const Text("Score : "),
            );
          },
        ),
      ),
    ]);
  }
}
