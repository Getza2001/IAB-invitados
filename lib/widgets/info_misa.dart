import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InfoMisa extends StatelessWidget {
  const InfoMisa({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          height: 60,
          width: 360,
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
                  spreadRadius: 1,
                  blurRadius: 1,
                )
              ]),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: const [Icon(Icons.location_on), Text('Misa: ')],
                ),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: const [
                    Text(
                      'Catedral de Guadalajara, Jalisco',
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Hora: 8:00 PM',
                      textAlign: TextAlign.right,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        onTap: () {
          showDialog(context: context, builder: (context) => const InfMisa());
        });
  }
}
