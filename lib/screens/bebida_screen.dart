import 'package:flutter/material.dart';

import '../styles/colors/colors_view.dart';
import '../widgets/info_bebida.dart';

class Bebida extends StatelessWidget {
  const Bebida({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const Text(
            "¿Qué bebida desea tomar?",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: ColorSelect.secondaryText,
            ),
          ),
          Row(
            children: [
              InkWell(
                child: Container(
                  margin: const EdgeInsets.only(left: 40, top: 30),
                  width: 130,
                  height: 100,
                  decoration: BoxDecoration(
                      //color: Colors.red,
                      border: Border.all(
                          style: BorderStyle.none, color: Colors.grey),
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                          blurStyle: BlurStyle.outer,
                          color: Colors.grey.withOpacity(0.9),
                          spreadRadius: 5,
                          blurRadius: 10,
                          // offset: Offset(5, 15), // changes position of shadow
                        ),
                      ]),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          children: const [
                            Text(
                              'Sin Alcohol',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: ColorSelect.secondaryText,
                              ),
                            ),
                            SizedBox(
                              height: 1.0,
                            ),
                            Text(
                              '5 Bebidas',
                              style: TextStyle(
                                fontSize: 15,
                                color: ColorSelect.secondaryText,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            // Text(
                            //   'Seleccionar',
                            //   style: TextStyle(
                            //     fontSize: 16,
                            //     color: ColorSelect.secondaryText,
                            //   ),
                            // )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  print("sin alcohol");
                  showDialog(
                      context: context, builder: (context) => BSinAlcohol());
                },
              ),
              InkWell(
                child: Container(
                  // color: Colors.white,
                  margin: const EdgeInsets.only(left: 30, top: 30),
                  width: 130,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          style: BorderStyle.none, color: Colors.grey),
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                          blurStyle: BlurStyle.outer,
                          color: Colors.grey.withOpacity(0.9),
                          spreadRadius: 5,
                          blurRadius: 10,
                          // offset: Offset(5, 15), // changes position of shadow
                        ),
                      ]),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          children: const [
                            Text(
                              'Con Alcohol',
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: ColorSelect.secondaryText,
                              ),
                            ),
                            SizedBox(
                              height: 1.0,
                            ),
                            Text(
                              '5 Bebidas',
                              style: TextStyle(
                                fontSize: 15,
                                color: ColorSelect.secondaryText,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            // Text(
                            //   'Seleccionar',
                            //   style: TextStyle(
                            //     fontSize: 16,
                            //     color: ColorSelect.secondaryText,
                            //   ),
                            // )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  print("con alcohol");
                  showDialog(
                      context: context, builder: (context) => BConAlcohol());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
