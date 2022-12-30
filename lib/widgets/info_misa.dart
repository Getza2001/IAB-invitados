import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_iab_invitados/models/noviosinfo.dart';
import 'package:http/http.dart' as http;

import '../providers/datos_novios_provider.dart';
import '../widgets/widgets.dart';

class InfoMisa extends StatefulWidget {
  InfoMisa({super.key, required this.idNovios});
  final int idNovios;

  @override
  State<InfoMisa> createState() => _InfoMisaState();
}

class _InfoMisaState extends State<InfoMisa> with ChangeNotifier {
  final datos = DatosNoviosProvider();

  String _url = 'http://invitacionaboda.com/WebService';

  List onDisplayNovios = [];


  NoviosInfo novios = NoviosInfo(datos: []);

  Future<NoviosInfo> getDatos(int idNovios) async {
    final _urlBase = '$_url/getDatosNovios.php?idNovio=$idNovios';
    final response = await http.get(Uri.parse(_urlBase));
    novios = NoviosInfo.fromJson(jsonDecode(response.body));
    return novios;
  }

  @override
  void initState() {
    getDatos(widget.idNovios);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    String misaLug = '';
    double misaLat = 0.0, misaLong = 0.0;
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
          child: FutureBuilder(
            future: getDatos(widget.idNovios),
            builder:
                (BuildContext context, AsyncSnapshot<NoviosInfo> snapshot) {
              // print(snapshot.data!.datos[0].aPNovia);
              if (snapshot.hasData) {
                misaLug = snapshot.data!.datos[0].misaLugar;
                // print('misa lugar: ${snapshot.data!.datos[0].misaLugar}');
                // print('misa lat: ${snapshot.data!.datos[0].misaLatitud}');
                // print('misa long: ${snapshot.data!.datos[0].misaLongitud}');
                misaLat = double.parse( snapshot.data!.datos[0].misaLatitud );
                misaLong = double.parse(snapshot.data!.datos[0].misaLongitud);
                return Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Row(
                        children: const [
                          Icon(Icons.location_on),
                          Text('Misa: ')
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            width: 210,
                            child: Text(
                              snapshot.data!.datos[0].misaLugar,
                              // 'Catedral de Guadalajara, Jalisco',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            // 'Hora: 8:00 PM',
                            'Hora: ${snapshot.data!.datos[0].misaHora}',
                            textAlign: TextAlign.right,
                          )
                        ],
                      ),
                    )
                  ],
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
        onTap: () {
          showDialog(context: context, builder: (context) => InfMisa(misaLug: misaLug, misaLat: misaLat, misaLong: misaLong,));
        });
  }
}
