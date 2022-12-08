import 'package:flutter/material.dart';
import 'package:flutter_iab_invitados/screens/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Invitación a Boda',
        debugShowCheckedModeBanner: false,
        home: SplashView());
    //home: BebidaShow());
  }
}
