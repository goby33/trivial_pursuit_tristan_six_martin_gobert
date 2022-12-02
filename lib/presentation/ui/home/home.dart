import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:trivial_pursuit_app/data/repositories/question_repository.dart';
import 'package:trivial_pursuit_app/presentation/states/cubits/jeux_cubit.dart';
import 'package:trivial_pursuit_app/presentation/ui/home/classement/classement.dart';
import 'package:trivial_pursuit_app/presentation/ui/home/jeux/jeux.dart';
import 'package:trivial_pursuit_app/presentation/ui/home/profil/profil.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _pageIndex = 0;

  final pages = [const Jeux(), const Profil(), const Classement()];

  final titlesPage = ["Jeux", "Profil", "Classement"];
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
            label: 'Jeux',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_score),
            label: 'Classement',
          ),
        ],
      ),
    );
  }
}