import 'package:flutter/material.dart';

class InfoTiempo extends StatelessWidget {
  const InfoTiempo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            // color: Colors.white,
            margin: const EdgeInsets.all(10),
            width: 103,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(style: BorderStyle.none, color: Colors.grey),
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
                        'Dias restantes',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        height: 1.0,
                      ),
                      Text(
                        '0',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            // color: Colors.white,
            margin: const EdgeInsets.all(10),
            width: 103,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(style: BorderStyle.none, color: Colors.grey),
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
                        'Horas restantes',
                        style: TextStyle(fontSize: 11),
                      ),
                      SizedBox(
                        height: 1.0,
                      ),
                      Text(
                        '0',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            // color: Colors.white,
            margin: const EdgeInsets.all(9),
            width: 103,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(style: BorderStyle.none, color: Colors.grey),
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
                  margin: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      Container(
                        // color: Colors.red,
                        width: double.infinity,
                        child: Text('Min. restantes',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.visible,

                        ),
                      ),
                      Text('0', textAlign: TextAlign.center,),
                    ],
                  ),
                )
                // Container(
                //   margin: const EdgeInsets.all(9),
                //   child: Column(
                //     children: const [
                //       Text(
                //         'Min. restantes',
                //         style: TextStyle(fontSize: 12),
                //       ),
                //       SizedBox(
                //         height: 1.0,
                //       ),
                //       Text(
                //         '0',
                //         style: TextStyle(
                //             fontSize: 20, fontWeight: FontWeight.w800),
                //       )
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
