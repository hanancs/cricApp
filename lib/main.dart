import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:timer/app/landingpage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cric App-u',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: LandingPage(),
    );
  }
}
