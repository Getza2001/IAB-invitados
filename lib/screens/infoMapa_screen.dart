import 'package:flutter/material.dart';
import 'package:flutter_iab_invitados/styles/colors/colors_view.dart';

class InfCeremonia extends StatelessWidget {
  const InfCeremonia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Info.'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
              "Esta opción le lleva a Google Maps para ver la dirección de la Ceremonia"),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("CANCELAR",
                style: TextStyle(color: ColorSelect.primary))),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("SI, IR AL MAPA",
                style: TextStyle(color: ColorSelect.primary))),
      ],
    );
  }
}

class InfMisa extends StatelessWidget {
  const InfMisa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Info.'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
              "Esta opción le lleva a Google Maps para ver la dirección de la Misa"),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("CANCELAR",
                style: TextStyle(color: ColorSelect.primary))),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("SI, IR AL MAPA",
                style: TextStyle(color: ColorSelect.primary))),
      ],
    );
  }
}
