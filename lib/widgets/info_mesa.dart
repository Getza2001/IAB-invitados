import 'package:flutter/material.dart';

import '../styles/colors/colors_view.dart';

class InfoMesa extends StatelessWidget {
  const InfoMesa({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 330,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          // color: Colors.red,
          border: Border.all(
            style: BorderStyle.none,
            color: Colors.grey,
          ),
          boxShadow: [
            BoxShadow(
              blurStyle: BlurStyle.normal,
              // color: Colors.grey,
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 2,
            )
          ]),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            child: Column(
              children: [
                const Text('Información reservada para el\n dia del evento\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ColorSelect.secondaryText,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
                Material(
                  child: Ink(
                    decoration: const ShapeDecoration(
                      color: ColorSelect.primary,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.restart_alt_rounded),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
