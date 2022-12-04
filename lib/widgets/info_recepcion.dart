import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InfoRecepcion extends StatelessWidget {
  const InfoRecepcion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          height: 70,
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
                  children: const [
                    Icon(Icons.location_on),
                    Text('Recepción: ')
                  ],
                ),
              ),
              const Spacer(),
              // Container(
              //   width: 10,
              //   height: 10,
              //   color: Colors.red,
              // )
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: const [
                    Flexible(
                      child: Text(
                          'Joanca Hacienda y Salón,San Agustin, Jalisco',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: true,
                          style: TextStyle(fontSize: 10)),
                    ),
                    Flexible(
                      child: Text(
                        'Hora: 8:00 PM',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        softWrap: true,
                        style: TextStyle(fontSize: 10),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        onTap: () {
          showDialog(
              context: context, builder: (context) => const InfCeremonia());
        });
  }
}
