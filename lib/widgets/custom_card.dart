import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      elevation: 2,
      // shadowColor: Colors.black.withOpacity(20),
      child: Column(
        children: const [
          FadeInImage(
            placeholder: AssetImage('assets/images/appfondologo.png'),
            image: AssetImage(
              'assets/images/appfondologo.png',
            ),
            width: 370,
            height: 200,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
        ],
      ),
    );
  }
}
