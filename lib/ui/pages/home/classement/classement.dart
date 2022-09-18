import 'package:flutter/material.dart';

class Classement extends StatelessWidget {
  Classement({Key? key}) : super(key: key);

  var items = List<String>.generate(10000, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
              hintText: 'Recherché un pseudo',
            )
          ),
          ListView.builder(
            itemCount: items.length,
            prototypeItem: ListTile(
              title: Text(items.first),
            ),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(items[index]),
                subtitle: Text("Score : "),
              );
            },
          ),
        ]
    );
  }
}
