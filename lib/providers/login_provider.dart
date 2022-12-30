import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginProvider {
  loginValidate(String correo, String password) {}
  // final String _url = "http://www.invitacionaboda.com/WS";

  // //http://invitacionaboda.com/WS/loginInvitadoExt.aspx?correo=cjmc12@hotmail.com&password=Ceci2215

  // Future<Map<String, dynamic>> loginValidate(
  //     String correo, String password) async {
  //   print("correo: " + correo);
  //   print("pass: " + password);
  //   final url = '$_url/loginInvitadoExt.aspx?correo=$correo&password=$password';
  //   var response = await http.post(Uri.parse(url));
  //   print(response);

  //   //var dataLogin = await json.decode(json.encode(response.body));
  //   //http://www.invitacionaboda.com/WebService/v1/login.php?username=cjmc12@hotmail.com&password=admin

  //   final Map<String, dynamic> dataLogin =
  //       json.decode(json.encode(response.body));

  //   print("response: " + response.body);
  //   return dataLogin;
  // }
}
