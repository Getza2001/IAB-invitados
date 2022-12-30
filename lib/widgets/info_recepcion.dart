import 'dart:convert';

import '../models/models.dart';
import '../widgets/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_iab_invitados/providers/datos_novios_provider.dart';
import 'package:http/http.dart' as http;

class InfoRecepcion extends StatefulWidget {
  const InfoRecepcion({Key? key, required this.idNovios}) : super(key: key);
  final int idNovios;

  @override
  State<InfoRecepcion> createState() => _InfoRecepcionState();
}

class _InfoRecepcionState extends State<InfoRecepcion> with ChangeNotifier {
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
    String ceremoniaLug = '';
    double recepLat = 0.0, recepLong = 0.0;
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
          child: FutureBuilder(
            future: getDatos(widget.idNovios),
            builder:
                (BuildContext context, AsyncSnapshot<NoviosInfo> snapshot) {
              if (snapshot.hasData) {
                ceremoniaLug = snapshot.data!.datos[0].recepcionLugar;
                recepLat = double.parse( snapshot.data!.datos[0].recepcionLatitud );
                recepLong = double.parse(snapshot.data!.datos[0].recepcionLongitud);
                return Row(
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
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            width: 210,
                            child: Text(
                              snapshot.data!.datos[0].recepcionLugar,
                              // 'Catedral de Guadalajara, Jalisco',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            // 'Hora: 8:00 PM',
                            'Hora: ${snapshot.data!.datos[0].recepcionHora}',
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
          showDialog(
              context: context, builder: (context) => InfCeremonia(ceremoniaLugar: ceremoniaLug, recepcionLat: recepLat, recepcionLong: recepLong,));
        });
  }
}
