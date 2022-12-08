import 'package:flutter/material.dart';

import '../styles/colors/colors_view.dart';

class BSinAlcohol extends StatefulWidget {
  const BSinAlcohol({Key? key}) : super(key: key);

  @override
  State<BSinAlcohol> createState() => _BSinAlcoholState();
}

class _BSinAlcoholState extends State<BSinAlcohol> {
  List<Map> categories = [
    {"name": "Agua", "isChecked": false},
    {"name": "Jugo", "isChecked": false},
    {"name": "Refresco", "isChecked": false},
    {"name": "Agua fresca", "isChecked": false},
    {"name": "Limonada ", "isChecked": false},
  ];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: const Text(
                  "BEBIDAS SIN ALCOHOL",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),
              Column(
                  children: categories.map((favorite) {
                return CheckboxListTile(
                    activeColor: Colors.deepPurpleAccent,
                    checkboxShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    value: favorite["isChecked"],
                    title: Text(favorite["name"]),
                    onChanged: (val) {
                      setState(() {
                        favorite["isChecked"] = val;
                      });
                    });
              }).toList()),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),
              Container(
                alignment: Alignment(1, 1),
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("GUARDAR",
                        style: TextStyle(color: ColorSelect.primary))),
              ),
              // Wrap(
              //   children: categories.map((favorite) {
              //     if (favorite["isChecked"] == true) {
              //       print(favorite["name"]);
              //       return Card(
              //         elevation: 3,
              //         color: Colors.deepPurpleAccent,
              //         child: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Row(
              //             mainAxisSize: MainAxisSize.min,
              //             children: [
              //               Text(
              //                 favorite["name"],
              //                 style: const TextStyle(color: Colors.white),
              //               ),
              //               const SizedBox(
              //                 width: 5,
              //               ),
              //               GestureDetector(
              //                 onTap: () {
              //                   setState(() {
              //                     favorite["isChecked"] = !favorite["isChecked"];
              //                   });
              //                 },
              //                 child: const Icon(
              //                   Icons.delete_forever_rounded,
              //                   color: Colors.white,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       );
              //     }
              //     return Container();
              //   }).toList(),
              // )
            ]),
          ),
        ),
      ],
    );
  }
}

class BConAlcohol extends StatefulWidget {
  const BConAlcohol({Key? key}) : super(key: key);

  @override
  State<BConAlcohol> createState() => _BConAlcoholState();
}

class _BConAlcoholState extends State<BConAlcohol> {
  List<Map> categories = [
    {"name": "Cerveza", "isChecked": false},
    {"name": "Tequila", "isChecked": false},
    {"name": "Vino", "isChecked": false},
    {"name": "Agua loca", "isChecked": false},
    {"name": "Vino blanco ", "isChecked": false},
  ];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: const Text(
                  "BEBIDAS CON ALCOHOL",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),
              Column(
                  children: categories.map((favorite) {
                return CheckboxListTile(
                    activeColor: Colors.deepPurpleAccent,
                    checkboxShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    value: favorite["isChecked"],
                    title: Text(favorite["name"]),
                    onChanged: (val) {
                      setState(() {
                        favorite["isChecked"] = val;
                      });
                    });
              }).toList()),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),
              Container(
                alignment: Alignment(1, 1),
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("GUARDAR",
                        style: TextStyle(color: ColorSelect.primary))),
              ),
              // Wrap(
              //   children: categories.map((favorite) {
              //     if (favorite["isChecked"] == true) {
              //       print(favorite["name"]);
              //       return Card(
              //         elevation: 3,
              //         color: Colors.deepPurpleAccent,
              //         child: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Row(
              //             mainAxisSize: MainAxisSize.min,
              //             children: [
              //               Text(
              //                 favorite["name"],
              //                 style: const TextStyle(color: Colors.white),
              //               ),
              //               const SizedBox(
              //                 width: 5,
              //               ),
              //               GestureDetector(
              //                 onTap: () {
              //                   setState(() {
              //                     favorite["isChecked"] = !favorite["isChecked"];
              //                   });
              //                 },
              //                 child: const Icon(
              //                   Icons.delete_forever_rounded,
              //                   color: Colors.white,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       );
              //     }
              //     return Container();
              //   }).toList(),
              // )
            ]),
          ),
        ),
      ],
    );
  }
}
