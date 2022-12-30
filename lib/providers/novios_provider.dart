import 'dart:convert';
import 'package:http/http.dart' as http;

class NovioProvider {
  // final String _url = "http://www.invitacionaboda.com/WebService";

  // Future<Map<String, dynamic>> novioValidate(int idNovio) async {
  //   print("idNovio: ");
  //   print(idNovio);

  //   final url = '$_url/getDatosNovios.php?idNovio=$idNovio';
  //   var response = await http.get(Uri.parse(url));

  //   print("response . body ");
  //   print(response.body);

  //   final Map<String, dynamic> dataNovio = json.decode(response.body);

  //   // print("response: " + response.body);
  //   return dataNovio;
  // }

  novioShared(String nombre) async {
    String objText, objBody;

    objText = '[{"Novio: "$nombre}]';
    objBody = '<?xml version="1.0" encoding="utf-8"?>' +
        '<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">' +
        '<soap:Body>' +
        '<porNombre xmlns="http://tempuri.org/">' +
        ' <infoNovios>$objText</infoNovios>' +
        '</porNombre>' +
        '</soap:Body>' +
        '</soap:Envelope>';

    final response = await http.post(
        Uri.parse("http://invitacionaboda.com/WS/traerNovios.asmx"),
        body: {
          'infoNovios': objBody
        },
        headers: {
          'content-type': 'application/soap+xml; charset=utf-8',
          'SOAPAction': 'http://tempuri.org/porNombre'
        });

    print(response.body);
  }
}
