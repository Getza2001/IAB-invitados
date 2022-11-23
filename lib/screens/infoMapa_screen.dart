import 'package:flutter/material.dart';
import 'package:flutter_iab_invitados/styles/colors/colors_view.dart';

class infCeremonia extends StatelessWidget {
  const infCeremonia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
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
              });
        },
        child: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            "Open Dialog",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    ));
  }
}

class infMisa extends StatelessWidget {
  const infMisa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
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
              });
        },
        child: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            "Open Dialog",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    ));
  }
}
