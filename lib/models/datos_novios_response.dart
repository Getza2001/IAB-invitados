import 'dart:convert';

import 'package:flutter_iab_invitados/models/models.dart';


class DatosNoviosResponse {
    DatosNoviosResponse({
        required this.datos,
    });

    List<Novios> datos;

    factory DatosNoviosResponse.fromJson(String str) => DatosNoviosResponse.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory DatosNoviosResponse.fromMap(Map<String, dynamic> json) => DatosNoviosResponse(
        datos: List<Novios>.from(json["datos"].map((x) => Novios.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "datos": List<dynamic>.from(datos.map((x) => x.toMap())),
    };
}
