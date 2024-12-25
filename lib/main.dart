import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:process_order/firebase_options.dart';
import 'package:process_order/pages/login.dart';
import 'package:process_order/pages/signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Signup()
    );
  }
}
