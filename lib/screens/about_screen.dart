import 'package:flutter/material.dart';
import 'package:flutter_iab_invitados/styles/colors/colors_view.dart';

class aboutShow extends StatelessWidget {
  const aboutShow({Key? key}) : super(key: key);

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
                  title: Column(children: [
                    Image.asset(
                      'assets/images/applogo.png',
                      height: 80,
                    ),
                    const Text('Versión')
                  ]),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("InvitaciónBoda 1.0.1\n"),
                      Text("Update Octubre 12, 2019\n"),
                      Text(
                        "ͼ 2019 PICE Software\n",
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("ACEPTAR",
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
