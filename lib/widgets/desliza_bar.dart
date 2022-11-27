import 'package:flutter/material.dart';

class DeslizaBar extends StatelessWidget {
  const DeslizaBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
          maxHeight: 60, maxWidth: double.infinity, minHeight: 35),
      // width: ,
      // height: 60,
      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5)),
      child: Row(
        children: [
          Center(
              child: Container(
                  alignment: Alignment.centerRight,
                  child: const Text(
                    'DESLIZA',
                    textAlign: TextAlign.center,
                  ))),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
