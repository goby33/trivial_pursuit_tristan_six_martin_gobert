import 'package:flutter/material.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/ranking/ranking_listener.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/ranking/ranking_provider.dart';

class RankingPage extends StatefulWidget {
  const RankingPage({Key? key}) : super(key: key);

  @override
  State<RankingPage> createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {
  var items = List<String>.generate(10000, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return RankingProvider(
      child: RankingListeners(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextField(
              onChanged: (text) {},
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
        ]),
      ),
    );
  }
}