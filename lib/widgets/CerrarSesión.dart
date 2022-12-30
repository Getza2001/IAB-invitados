import 'package:flutter/material.dart';
import 'package:flutter_iab_invitados/screens/login_screen.dart';
import 'package:flutter_iab_invitados/shared_prefs/user_preferences.dart';

class CerrarSesion extends StatelessWidget {
  CerrarSesion({Key? key}) : super(key: key);

  final prefs = PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Cerrar sesión'),
      content: const Text("¿Seguro que quieres cerrar la sesión?"),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      actions: [
        TextButton(
            child: const Text("Cancelar"),
            onPressed: () {
              Navigator.pop(context);
            }),
        TextButton(
            child: const Text("Aceptar"),
            onPressed: () {
              //prefs.clear();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            }),
      ],
    );
  }
}
