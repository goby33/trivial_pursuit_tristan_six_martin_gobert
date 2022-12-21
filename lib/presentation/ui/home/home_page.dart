import 'package:flutter/material.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/game/game_page.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/profile/profile_page.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/ranking/ranking_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _pageIndex = 0;

  final pages = [const GamePage(), RankingPage(), ProfilePage()];

  final titlesPage = ["Jeux", "Ranking", "profile"];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(titlesPage[_pageIndex]),
        centerTitle: true,
        elevation: 0,
      ),
      body: pages[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.smart_screen),
            label: 'Game',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.smart_screen),
            label: 'Ranking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
