import 'package:flutter/material.dart';
import 'package:flutter_iab_invitados/styles/colors/colors_view.dart';

class nosotrosShow extends StatelessWidget {
  const nosotrosShow({Key? key}) : super(key: key);

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
                      'assets/images/applogopice.png',
                      height: 80,
                    ),
                    const Text('Contáctanos')
                  ]),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Jesús García 3020 Col."),
                      const Text("Prados Providencia,"),
                      const Text(
                        "Guadalajara, Jalisco, México.\n",
                      ),
                      const Text("info@pice-software.com\n"),
                      const Text("3318128621\n"),
                      const Text("http://www.pice-software.com\n"),
                      Image.asset(
                        'assets/images/applogopicesoftware.png',
                        height: 100,
                        //width: 50,
                        //fit: BoxFit.contain,
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
