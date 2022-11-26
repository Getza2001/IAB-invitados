import 'package:flutter/material.dart';

class DeslizaBar extends StatelessWidget {
  const DeslizaBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxHeight: 60, maxWidth: double.infinity, minHeight: 35),
      // width: ,
      // height: 60,
      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5)),
      child: Row(
        children: [
          Center(
              child: Container(
                alignment: Alignment.centerRight,
                  child: Text(
            'DESLIZA',
            textAlign: TextAlign.center,
          ))),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
              color: Colors.white,
            )),
          )
        ],
      ),
    );
  }
}
