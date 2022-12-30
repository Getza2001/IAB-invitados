import 'package:flutter/material.dart';
import 'package:flutter_iab_invitados/models/models.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class DatosNoviosProvider extends ChangeNotifier {

  // String _url = 'http://invitacionaboda.com/WebService';

  // // DatosNoviosProvider(){
  // // }
  // // DatosNoviosProvider(int id){
  // //   print('Datos provider inicializando');
  // //   this.getDatosNovios(id);
  // // }

  // List onDisplayNovios = [];
  // // int idNovios = 0;
  // String idNov = '', nombreNovio = '', nombreNovia = '', aPNovio = '', aPNovia = '', misaLugar = '', misaHora = '', misaFecha = '', recepcionLugar = '', recepcionHora = '', recepcionFecha = '', fiestaLugar = '', fiestaHora = '';
  // double misaLatitud = 0.0, misaLongitud = 0.0, recepcionLatitud = 0.0, recepcionLongitud = 0.0, fiestaLatitud = 0.0, fiestaLongitud = 0.0;

  // getDatos(int idNovios) async {
  //   final _urlBase = '$_url/getDatosNovios.php?idNovio=$idNovios';
  //   var response = await http.get(Uri.parse(_urlBase));
  //   final datosNoviosResponse = DatosNoviosResponse.fromJson(response.body);
  //   print('**********************LLAMADA DESDE datos_novios_provider*************************');
  //   print('response bodyyyyy: ${response.body}');
  //   idNov = datosNoviosResponse.datos[0].idNovios;
  //   nombreNovio = datosNoviosResponse.datos[0].nombreNovio;
  //   nombreNovia = datosNoviosResponse.datos[0].nombreNovia;
  //   aPNovio = datosNoviosResponse.datos[0].aPNovio;
  //   aPNovia = datosNoviosResponse.datos[0].aPNovia;
  //   misaLugar = datosNoviosResponse.datos[0].misaLugar;
  //   misaHora = datosNoviosResponse.datos[0].misaLugar;
  //   misaFecha = DateFormat('yyyy-MM-dd\nHH:mm:ss').format(datosNoviosResponse.datos[0].misaFecha);
  //   recepcionLugar = datosNoviosResponse.datos[0].recepcionLugar;
  //   recepcionHora = datosNoviosResponse.datos[0].recepcionHora;
  //   recepcionFecha = DateFormat('yyyy-MM-dd\nHH:mm:ss').format(datosNoviosResponse.datos[0].recepcionFecha);
  //   fiestaLugar = datosNoviosResponse.datos[0].fiestaLugar;
  //   fiestaHora = datosNoviosResponse.datos[0].fiestaHora;
  //   misaLatitud = double.parse(datosNoviosResponse.datos[0].misaLatitud);
  //   misaLongitud = double.parse(datosNoviosResponse.datos[0].misaLongitud);
  //   recepcionLatitud = double.parse(datosNoviosResponse.datos[0].recepcionLatitud);
  //   recepcionLongitud = double.parse(datosNoviosResponse.datos[0].recepcionLongitud);
  //   fiestaLatitud = double.parse(datosNoviosResponse.datos[0].fiestaLatitud);
  //   fiestaLongitud = double.parse(datosNoviosResponse.datos[0].fiestaLongitud);
  //   print('nombre novio: ${nombreNovio}');
  //   print('nombre novia: ${nombreNovia}');
  //   print('apNovio: ${aPNovio}');
  //   print('apNovia: ${aPNovia}');
  //   print('misa lugar: ${misaLugar}');
  //   print('misa hora: ${misaHora}');
  //   print('misa fecha: ${misaFecha}');
  //   print('recepcion lugar: ${recepcionLugar}');
  //   print('recepcion hora: ${recepcionHora}');
  //   print('recepcion fecha: ${recepcionFecha}');
  //   print('fista lugar: ${fiestaLugar}');
  //   print('fiesta hora: ${fiestaHora}');
  //   print('misa latitud: ${misaLatitud}');
  //   print('misa Longitud: ${misaLongitud}');
  //   print('recepcion latitud: ${recepcionLatitud}');
  //   print('recepcion longuitud: ${recepcionLongitud}');
  //   print('fiesta latitud: ${fiestaLatitud}');
  //   print('fiesta longitud: ${fiestaLongitud}');
  //   notifyListeners();
  //   print('**********************CIERRE DE LLAMADA DESDE datos_novios_provider*************************');
  // }
}