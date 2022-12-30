import 'dart:convert';
import 'package:http/http.dart' as http;

class FotosProvider {
  final String _url = "http://www.invitacionaboda.com/WebService";

  //http://supermoteles.com/WebService/subirFoto.php

  fotoValidate(data) async {
    final url = '$_url/subirFoto.php';
    return await http.post(Uri.parse(url), body: jsonEncode(data), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Charset': 'utf-8'
    });
    // var response = await http.post(Uri.parse(url));
    // print("response: " + response.body);

    // //var dataLogin = await json.decode(json.encode(response.body));
    // //http://www.invitacionaboda.com/WebService/v1/login.php?username=cjmc12@hotmail.com&password=admin

    // final Map<String, dynamic> dataLogin = json.decode(response.body);

    // return dataLogin;
  }
}
