import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginProvider {
  // loginValidate(String correo, String password) {}
  // final String _url = "http://www.invitacionaboda.com/WebService";

  // http://invitacionaboda.com/WS/loginInvitadoExt.aspx?correo=cjmc12@hotmail.com&password=Ceci2215

  final String _url = "http://www.invitacionaboda.com/WebService/v1";

  Future<Map<String, dynamic>> loginValidate(
      String correo, String password) async {
    print("correo: " + correo);
    print("pass: " + password);
    // final url = '$_url/loginInvitadoExt.php?username=$correo&password=$password';
    final url = '$_url/login.php?username=$correo&password=$password';
    var response = await http.post(Uri.parse(url));

// final url = '$_url/loginInvitadoExt.php?username=$correo&password=$password';
//     var response = await http.post(Uri.parse(url));
    //print(response);

    //var dataLogin = await json.decode(json.encode(response.body));
    //http://www.invitacionaboda.com/WebService/loginInvitadoExt.php?username=cjmc12@hotmail.com&password=admin

    final Map<String, dynamic> dataLogin = json.decode(response.body);
    print("pasa data login");
    print(dataLogin);

    return dataLogin;
  }

  // // loginValidate(String correo, String password) {}
  // final String _url = "http://www.invitacionaboda.com/WS";

  // // http://invitacionaboda.com/WS/loginInvitadoExt.aspx?correo=cjmc12@hotmail.com&password=Ceci2215

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
  //       json.decode((response.body));

  //   print("response: " + response.body);
  //   return dataLogin;
  // }
}





// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class LoginProvider {

//   // loginValidate(String correo, String password) {}
//   final String _url = "http://www.invitacionaboda.com/WebService";

//   // http://invitacionaboda.com/WS/loginInvitadoExt.aspx?correo=cjmc12@hotmail.com&password=Ceci2215

//   Future<Map<String, dynamic>> loginValidate(
//       String correo, String password) async {
//     print("correo: " + correo);
//     print("pass: " + password);
//     final url =
//         '$_url/loginInvitadoExt.php?username=$correo&password=$password';
//     var response = await http.post(Uri.parse(url));


// // final url = '$_url/loginInvitadoExt.php?username=$correo&password=$password';
// //     var response = await http.post(Uri.parse(url));
//     //print(response);

//     //var dataLogin = await json.decode(json.encode(response.body));
//     //http://www.invitacionaboda.com/WebService/loginInvitadoExt.php?username=cjmc12@hotmail.com&password=admin

//     final Map<String, dynamic> dataLogin = json.decode(response.body);
//     print("pasa data login");
//     print(dataLogin);

//     return dataLogin;
//   }

//   // // loginValidate(String correo, String password) {}
//   // final String _url = "http://www.invitacionaboda.com/WS";

//   // // http://invitacionaboda.com/WS/loginInvitadoExt.aspx?correo=cjmc12@hotmail.com&password=Ceci2215

//   // Future<Map<String, dynamic>> loginValidate(
//   //     String correo, String password) async {
//   //   print("correo: " + correo);
//   //   print("pass: " + password);
//   //   final url = '$_url/loginInvitadoExt.aspx?correo=$correo&password=$password';
//   //   var response = await http.post(Uri.parse(url));
//   //   print(response);

//   //   //var dataLogin = await json.decode(json.encode(response.body));
//   //   //http://www.invitacionaboda.com/WebService/v1/login.php?username=cjmc12@hotmail.com&password=admin

//   //   final Map<String, dynamic> dataLogin =
//   //       json.decode((response.body));

//   //   print("response: " + response.body);
//   //   return dataLogin;
//   // }
// }
