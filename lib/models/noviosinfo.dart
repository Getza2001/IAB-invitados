// To parse this JSON data, do
//
//     final noviosInfo = noviosInfoFromJson(jsonString);

import 'dart:convert';

NoviosInfo noviosInfoFromJson(String str) =>
    NoviosInfo.fromJson(json.decode(str));

String noviosInfoToJson(NoviosInfo data) => json.encode(data.toJson());

class NoviosInfo {
  NoviosInfo({
    required this.datos,
  });

  List<Dato> datos;

  factory NoviosInfo.fromJson(Map<String, dynamic> json) => NoviosInfo(
        datos: List<Dato>.from(json["datos"].map((x) => Dato.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "datos": List<dynamic>.from(datos.map((x) => x.toJson())),
      };
}

class Dato {
  Dato({
    required this.idNovios,
    required this.nombreNovia,
    required this.nombreNovio,
    required this.aPNovia,
    required this.aPNovio,
    required this.misaLugar,
    required this.misaHora,
    required this.misaFecha,
    required this.misaLatitud,
    required this.misaLongitud,
    required this.recepcionLugar,
    required this.recepcionHora,
    required this.recepcionFecha,
    required this.recepcionLatitud,
    required this.recepcionLongitud,
    required this.fiestaLugar,
    required this.fiestaHora,
    required this.fiestaLatitud,
    required this.fiestaLongitud,
  });

  String idNovios;
  String nombreNovia;
  String nombreNovio;
  String aPNovia;
  String aPNovio;
  String misaLugar;
  String misaHora;
  DateTime misaFecha;
  String misaLatitud;
  String misaLongitud;
  String recepcionLugar;
  String recepcionHora;
  DateTime recepcionFecha;
  String recepcionLatitud;
  String recepcionLongitud;
  String fiestaLugar;
  String fiestaHora;
  String fiestaLatitud;
  String fiestaLongitud;

  factory Dato.fromJson(Map<String, dynamic> json) => Dato(
        idNovios: json["idNovios"],
        nombreNovia: json["nombreNovia"],
        nombreNovio: json["nombreNovio"],
        aPNovia: json["aPNovia"],
        aPNovio: json["aPNovio"],
        misaLugar: json["misaLugar"],
        misaHora: json["misaHora"],
        misaFecha: DateTime.parse(json["misaFecha"]),
        misaLatitud: json["misaLatitud"],
        misaLongitud: json["misaLongitud"],
        recepcionLugar: json["recepcionLugar"],
        recepcionHora: json["recepcionHora"],
        recepcionFecha: DateTime.parse(json["recepcionFecha"]),
        recepcionLatitud: json["recepcionLatitud"],
        recepcionLongitud: json["recepcionLongitud"],
        fiestaLugar: json["fiestaLugar"],
        fiestaHora: json["fiestaHora"],
        fiestaLatitud: json["fiestaLatitud"],
        fiestaLongitud: json["fiestaLongitud"],
      );

  Map<String, dynamic> toJson() => {
        "idNovios": idNovios,
        "nombreNovia": nombreNovia,
        "nombreNovio": nombreNovio,
        "aPNovia": aPNovia,
        "aPNovio": aPNovio,
        "misaLugar": misaLugar,
        "misaHora": misaHora,
        "misaFecha": misaFecha.toIso8601String(),
        "misaLatitud": misaLatitud,
        "misaLongitud": misaLongitud,
        "recepcionLugar": recepcionLugar,
        "recepcionHora": recepcionHora,
        "recepcionFecha": recepcionFecha.toIso8601String(),
        "recepcionLatitud": recepcionLatitud,
        "recepcionLongitud": recepcionLongitud,
        "fiestaLugar": fiestaLugar,
        "fiestaHora": fiestaHora,
        "fiestaLatitud": fiestaLatitud,
        "fiestaLongitud": fiestaLongitud,
      };
}
