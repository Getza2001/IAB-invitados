// import 'package:shared_preferences/shared_preferences.dart';

// class PreferenciasUsuario {
//   static final PreferenciasUsuario _instance = PreferenciasUsuario._internal();

//   factory PreferenciasUsuario() {
//     return _instance;
//   }

//   PreferenciasUsuario._internal();

//   SharedPreferences? _prefs;

//   initPrefs() async {
//     _prefs = await SharedPreferences.getInstance();
//   }

//   void clear() {
//     _prefs?.clear();
//   }

//   // GET y SET
//   bool get logeado {
//     return _prefs?.getBool('logeado') ?? false;
//   }

//   set logeado(bool value) {
//     _prefs?.setBool('logeado', value);
//   }

//   int get idNovios {

//     return _prefs?.getInt('idNovios') ?? 0;
//   }

//   set idNovios(int value) {
//     _prefs?.setInt('idNovios', value);
//   }

//   String get recepcionFecha {
//     return _prefs?.getString('recepcionFecha') ?? '';
//   }

//   set recepcionFecha(String value) {
//     _prefs?.setString('recepcionFecha', value);
//   }

//   String get correoRegistro {
//     return _prefs?.getString('correoRegistro') ?? '';
//   }

//   set correoRegistro(String value) {
//     _prefs?.setString('correoRegistro', value);
//   }
// }

import 'package:shared_preferences/shared_preferences.dart';

int idNovios = 0;

class PreferenciasUsuario {
  // Creating a field

  // Using the getter
  // method to take input
  int get id_Novios {
    return idNovios;
  }

  // Using the setter method
  // to set the input
  set id_Novios(int idNovio) {
    idNovios = idNovio;
  }

  // static final PreferenciasUsuario _instance = PreferenciasUsuario._internal();

  // factory PreferenciasUsuario() {
  //   return _instance;
  // }

  // PreferenciasUsuario._internal();

  // late SharedPreferences _prefs;

  // initPrefs() async {
  //   _prefs = await SharedPreferences.getInstance();
  // }

  // void clear() {
  //   _prefs?.clear();
  // }

  // GET y SET
  // bool get logeado {
  //   return _prefs?.getBool('logeado') ?? false;
  // }

  // set logeado(bool value) {
  //   _prefs?.setBool('logeado', value);
  // }

  // Future<int> getIdNovios() async {
  //   SharedPreferences _prefs = await SharedPreferences.getInstance();
  //   return _prefs.getInt('idNovios') ?? 0;
  // }

  // getValue() async {
  //   SharedPreferences _prefs = await SharedPreferences.getInstance();
  //   //Return String
  //   int? stringValue = _prefs.getInt('idNovios');
  //   return stringValue;
  // }

  // void setIdNovios(int value) async {
  //   SharedPreferences _prefs = await SharedPreferences.getInstance();
  //   _prefs.setInt('idNovios', value);
  // }

  // String get recepcionFecha {
  //   return _prefs?.getString('recepcionFecha') ?? '';
  // }

  // set recepcionFecha(String value) {
  //   _prefs?.setString('recepcionFecha', value);
  // }

  // String get correoRegistro {
  //   return _prefs?.getString('correoRegistro') ?? '';
  // }

  // set correoRegistro(String value) {
  //   _prefs?.setString('correoRegistro', value);
  // }
}
