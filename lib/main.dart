import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/app.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'trivial_pursuit',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(TrivialPursuitApp());
}
