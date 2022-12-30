import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter_iab_invitados/models/guest_model.dart';

class GuestsProvider {
  final String _url = "http://www.invitacionaboda.com/WebService/v1";

  Future<List<GuestModel>> getGuests(int idNovios) async {
    print("pasa id novios");
    print(idNovios);
    final url = '$_url/getGuests.php?idNovios=$idNovios';
    final resp = await http.get(Uri.parse(url));

    final Map<String, dynamic> decodedData = json.decode(resp.body);
    final List<GuestModel> listGuests = [];

    decodedData.forEach((id, guest) {
      final guestTemp = GuestModel.fromJson(guest);

      listGuests.add(guestTemp);
    });

    return listGuests;
  }

  Future<List<GuestModel>> searchGuest(int idNovios, String query) async {
    final url = '$_url/getGuests.php?idNovios=$idNovios&query=$query';
    final resp = await http.get(Uri.parse(url));

    final Map<String, dynamic> decodedData = json.decode(resp.body);
    final List<GuestModel> guests = [];

    decodedData.forEach((id, guest) {
      final guestTemp = GuestModel.fromJson(guest);
      guests.add(guestTemp);
    });

    return guests;
  }

  Future<Map<String, dynamic>> getDataQR(
      int idNovios, int idInvitadoADB) async {
    final url =
        '$_url/getDataQR.php?idNovios=$idNovios&idInvitadoADB=$idInvitadoADB';
    var response = await http.get(Uri.parse(url));

    final Map<String, dynamic> dataLogin = json.decode(response.body);

    return dataLogin;
  }

  Future<List<GuestModel>> getGuestsByTable(int idNovios, int mesa) async {
    final url = '$_url/getGuestsByTable.php?idNovios=$idNovios&mesa=$mesa';
    var response = await http.get(Uri.parse(url));

    final Map<String, dynamic> decodedData = json.decode(response.body);
    final List<GuestModel> listGuests = [];

    decodedData.forEach((id, guest) {
      final guestTemp = GuestModel.fromJson(guest);

      listGuests.add(guestTemp);
    });

    return listGuests;
  }
}
