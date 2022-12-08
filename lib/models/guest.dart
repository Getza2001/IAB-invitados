import 'dart:convert';

class GuestsProvider {
    GuestsProvider({
        required this.idInvitado,
        required this.idNovios,
        required this.apodo,
        required this.nombre,
        required this.aPaterno,
        required this.aMaterno,
        required this.mesa,
        required this.boletos,
        required this.idTipoInvitado,
        required this.asistioBoda,
    });

    int idInvitado;
    int idNovios;
    String apodo;
    String nombre;
    String aPaterno;
    String aMaterno;
    int mesa;
    int boletos;
    int idTipoInvitado;
    int asistioBoda;

    factory GuestsProvider.fromJson(String str) => GuestsProvider.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory GuestsProvider.fromMap(Map<String, dynamic> json) => GuestsProvider(
        idInvitado: json["idInvitado"],
        idNovios: json["idNovios"],
        apodo: json["apodo"],
        nombre: json["nombre"],
        aPaterno: json["aPaterno"],
        aMaterno: json["aMaterno"],
        mesa: json["mesa"],
        boletos: json["boletos"],
        idTipoInvitado: json["idTipoInvitado"],
        asistioBoda: json["asistioBoda"],
    );

    Map<String, dynamic> toMap() => {
        "idInvitado": idInvitado,
        "idNovios": idNovios,
        "apodo": apodo,
        "nombre": nombre,
        "aPaterno": aPaterno,
        "aMaterno": aMaterno,
        "mesa": mesa,
        "boletos": boletos,
        "idTipoInvitado": idTipoInvitado,
        "asistioBoda": asistioBoda,
    };
}
