import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InfoMisa extends StatelessWidget {
  const InfoMisa({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        ]
      ),
      child: Container(
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.location_on),
                  Text('Misa: ')
                ],
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('Catedral de Guadalajara, Jalisco', textAlign: TextAlign.left,),
                  Text('Hora: 8:00 PM',
                  textAlign: TextAlign.right,)
                ],
              ),
            )
          ],
        ),
      ),





      // alignment: FractionalOffset.center,
      // color: Colors.blue,
      // width: double.infinity,
      // margin: EdgeInsets.all(10),
      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     Container(
      //       alignment: FractionalOffset.center,
      //       color: Colors.red,
      //       margin: EdgeInsets.all(5),
      //       child: Row(
      //         children: [
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //             children: [
      //               Container(
      //                 color: Colors.yellow,
      //                 child: Row(
      //                   children: [
      //                     Icon(Icons.location_on),
      //                     Text('Misa:')
      //                   ],
      //                 ),
      //               ),
      //               // Spacer(),
      //               Container(
      //                 color: Colors.yellow,
      //                 child: Column(
      //                   children: [
      //                     Text('Catedral de Gualajara, Jalisco.'),
      //                     Container(
      //                       child: Row(
      //                         children: [
      //                           Text('Hora:'),
      //                           Text('5:30 PM')
      //                         ],
      //                       ),
      //                     )
      //                   ],
      //                 ),
      //               )
      //             ],
      //           ),
      //           Row()
      //         ],
      //       ),
      //     )
      //   ]
      // ),
    );
  }
}