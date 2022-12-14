import 'package:flutter/material.dart';
// import 'package:flutter_iab_invitados/screens/login_screen.dart';
import 'package:flutter_iab_invitados/screens/loginIn_screen.dart';

import 'package:flutter_iab_invitados/screens/splash_screen.dart';
import 'package:flutter_iab_invitados/screens/foto_screen.dart';

import 'package:flutter_iab_invitados/providers/datos_novios_provider.dart';
import 'package:flutter_iab_invitados/screens/tabs_screen.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => DatosNoviosProvider(), lazy: true),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Invitación a Boda',
        debugShowCheckedModeBanner: false,
        // home: TabsScreen(idNovio: 1));
        // home: LoginScreen());
    home: SplashView());
    // home: Fotos());
  }
}
