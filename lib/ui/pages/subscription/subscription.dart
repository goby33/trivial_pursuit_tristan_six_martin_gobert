import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/bottom_painter.dart';
import '../../widgets/header_painter.dart';

class Subscription extends StatefulWidget {
  const Subscription({Key? key}) : super(key: key);

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: CustomPaint(
              painter: HeaderPainter(),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width, height: 200),
            ),
          ),
          const Positioned(
            top: 220,
            left: 200,
            child: Text(
              "Subscription",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(173, 185, 227, 1),
              ),
            ),
          ),
          Positioned(
            top: 350,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    TextField(
                        decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                      hintText: 'Entrer un pseudo',
                    )),
                    TextField(
                        decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                      hintText: 'Entrer un mot de passe',
                    )),
                  ]),
            ),
          ),
          Positioned(
            right: 40,
            top: 40,
            child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push("/");
              },
              child: const CircleAvatar(
                minRadius: 40,
                backgroundColor: Color.fromRGBO(0, 109, 119, 1),
                child: Icon(
                  Icons.arrow_forward,
                  size: 40,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: CustomPaint(
              painter: BottomPainter(),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width, height: 200),
            ),
          ),
        ],
      ),
    );
  }
}
