import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginProvider {
  final String _url = "http://www.invitacionaboda.com/WebService/v1";

  Future<Map<String, dynamic>> loginValidate(
      String username, String password) async {
    print("usuario: " + username);
    print("pass: " + password);
    final url = '$_url/login.php?username=$username&password=$password';
    var response = await http.get(Uri.parse(url));

    //var dataLogin = await json.decode(json.encode(response.body));
    //http://www.invitacionaboda.com/WebService/v1/login.php?username=cjmc12@hotmail.com&password=admin

    final Map<String, dynamic> dataLogin = json.decode(response.body);

    print("response: " + response.body);
    return dataLogin;
  }
}
