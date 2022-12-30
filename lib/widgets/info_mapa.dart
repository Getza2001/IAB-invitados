import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_iab_invitados/map/map_utils.dart';
import 'package:flutter_iab_invitados/styles/colors/colors_view.dart';


class InfCeremonia extends StatefulWidget {
  const InfCeremonia({Key? key, required this.ceremoniaLugar, required this.recepcionLat, required this.recepcionLong}) : super(key: key);

  final String ceremoniaLugar;
  final double recepcionLat, recepcionLong;

  @override
  State<InfCeremonia> createState() => _InfCeremoniaState();
}


class _InfCeremoniaState extends State<InfCeremonia> {

@override
  void initState() {
    // print('ceremonia lugar en etiqueta: ${widget.ceremoniaLugar}');
    // print('ceremonia long en etiqueta: ${widget.recepcionLat}');
    // print('ceremonia long en etiqueta: ${widget.recepcionLong}');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Info.'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
              '${widget.ceremoniaLugar}', style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
          Text('Esta opción le lleva a Google Maps para ver la dirección de la Ceremonia', textAlign: TextAlign.center,)
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("CANCELAR",
                style: TextStyle(color: ColorSelect.primary))),
        TextButton(
            onPressed: () {
              MapUtils.abrirMapa(widget.recepcionLat, widget.recepcionLong);
            },
            child: const Text("SI, IR AL MAPA",
                style: TextStyle(color: ColorSelect.primary))),
      ],
    );
  }
}



class InfMisa extends StatefulWidget {
  const InfMisa({Key? key, required this.misaLug, required this.misaLat, required this.misaLong}) : super(key: key);
  final String misaLug;
  final double misaLat, misaLong;

  @override
  State<InfMisa> createState() => _InfMisaState();
}

class _InfMisaState extends State<InfMisa> {
  @override
  void initState() {
    // print('misa lugar en etiqueta: ${widget.misaLug}');
    // print('misa lat en etiqueta: ${widget.misaLat}');
    // print('misa long en etiqueta: ${widget.misaLong}');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double lat = 0, long = 0;
    return AlertDialog(
      title: const Text('Info.'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text( widget.misaLug, style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center, ),
          Text('Esta opción le lleva a Google Maps para ver la dirección de la Misa',textAlign: TextAlign.center,),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("CANCELAR",
                style: TextStyle(color: ColorSelect.primary))),
        TextButton(
            onPressed: () {
              MapUtils.abrirMapa(widget.misaLat , widget.misaLong);
            },
            child: const Text("SI, IR AL MAPA",
                style: TextStyle(color: ColorSelect.primary))),
      ],
    );
  }
}
