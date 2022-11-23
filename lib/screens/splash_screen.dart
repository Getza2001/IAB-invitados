import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_iab_invitados/screens/login_screen.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _toOnboarding();
  }

  _toOnboarding() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (ctx) => const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset('assets/images/applogo.png')),
      ),
    );
  }
}
