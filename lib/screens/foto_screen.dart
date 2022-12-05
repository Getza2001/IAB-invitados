import 'package:flutter/material.dart';

import '../styles/colors/colors_view.dart';

class Fotos extends StatelessWidget {
  const Fotos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorSelect.fondo,
      height: 270,
      width: 365,
      child: Column(
        children: [
          Container(
            //padding: const EdgeInsets.all(10),
            height: 50,
            width: 365,
            color: Colors.white,
            // margin: const EdgeInsets.all(15),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text('Momentos Especiales',
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ColorSelect.secondaryText,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ],
            ),
          ),
          Container(
            height: 170,
            //color: Colors.white,
            margin: const EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
                color: ColorSelect.fondo,
                borderRadius: BorderRadius.circular(5),
                //color: Colors.red,
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
                  height: 105,
                  width: 365,
                  //color: Colors.white,

                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/tomarfotos.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 355,
                          height: 50,
                          child: OutlinedButton(
                            // onPressed: validate,
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => TabsScreen()),
                              // );
                            },
                            child: Icon(
                              Icons.linked_camera,
                              color: Colors.white,
                            ),
                            style: OutlinedButton.styleFrom(
                              backgroundColor: ColorSelect.primary,
                              elevation: 0,
                              // shape: RoundedRectangleBorder(
                              //   borderRadius: BorderRadius.circular(50),
                              // ),
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
