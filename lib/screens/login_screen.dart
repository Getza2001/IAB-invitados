import 'package:flutter/material.dart';
import 'package:flutter_iab_invitados/providers/login_provider.dart';
import 'package:flutter_iab_invitados/providers/novios_provider.dart';
import 'package:flutter_iab_invitados/screens/guests_screen.dart';
import 'package:flutter_iab_invitados/screens/tabs_screen.dart';
import 'package:flutter_iab_invitados/shared_prefs/user_preferences.dart';

import '../providers/datos_novios_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var datosNovios = DatosNoviosProvider();

  bool _passwordVisible = false;

  //Instance the shared preferences
  //final prefs = PreferenciasUsuario();

  PreferenciasUsuario prefss = new PreferenciasUsuario();
  //Gfg geek = new Gfg();

  //Global Keys
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  //Provider
  final loginProvider = LoginProvider();

  final novioProvider = NovioProvider();

  //Variables
  String _username = "";
  String _password = "";
  String _textBtnLogin = "INICIAR SESIÓN";
  bool _progressLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
            child: SizedBox(
              child: Column(
                children: [
                  Image.asset('assets/images/applogo.png', height: 200),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .4,
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Usuario',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black)),
                                SizedBox(
                                  height: 30,
                                  child: TextFormField(
                                    onSaved: (value) =>
                                        _username = value.toString(),
                                    initialValue: 'cjmc12@hotmail.com',
                                    style: const TextStyle(
                                        fontSize: 15, color: Colors.black),
                                    decoration: InputDecoration(
                                      hintText: 'Ingrese su correo electronico',
                                      hintStyle: const TextStyle(
                                          fontSize: 15,
                                          color:
                                              Color.fromRGBO(139, 139, 139, 1)),
                                      contentPadding:
                                          const EdgeInsets.only(bottom: 12),
                                      suffixIcon: Image.asset(
                                          'assets/images/usuario.png',
                                          color: const Color.fromRGBO(
                                              139, 139, 139, 1)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Text('Contraseña',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.black)),
                                    SizedBox(
                                      height: 30,
                                      child: TextFormField(
                                        // onSaved: (value) {
                                        //   //userData.password = value!;
                                        // },
                                        onSaved: (value) =>
                                            _password = value.toString(),
                                        initialValue: 'Ceci2215',
                                        //Ceci2215
                                        obscureText: !_passwordVisible,
                                        enableSuggestions: false,
                                        autocorrect: false,
                                        style: const TextStyle(
                                            fontSize: 15, color: Colors.black),
                                        toolbarOptions:
                                            const ToolbarOptions(paste: false),
                                        decoration: InputDecoration(
                                          hintText: 'Ingrese su contraseña',
                                          hintStyle: const TextStyle(
                                              fontSize: 15,
                                              color: Color.fromRGBO(
                                                  139, 139, 139, 1)),
                                          contentPadding:
                                              const EdgeInsets.only(bottom: 12),
                                          suffixIcon: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  _passwordVisible =
                                                      !_passwordVisible;
                                                });
                                              },
                                              alignment: Alignment.topCenter,
                                              icon: Icon(_passwordVisible
                                                  ? Icons.visibility
                                                  : Icons.visibility_off)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 45,
                            child: OutlinedButton(
                              onPressed: () {
                                _progressLogin ? null : validate();
                              },
                              child: Text(_textBtnLogin,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400)),
                              style: OutlinedButton.styleFrom(
                                backgroundColor:
                                    Color.fromRGBO(255, 64, 129, 1),
                                elevation: 0,
                              ),
                            ),
                          ),
                          SizedBox(
                              child: Text('¡Asiste, convive y diviértete!',
                                  style: TextStyle(
                                    color: Color.fromRGBO(139, 139, 139, 1),
                                    fontSize: 18,
                                  ))),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validate() async {
    FocusScope.of(context).unfocus();

    // var form = formKey.currentState;
    // form!.save();

    // if (_username.isEmpty || _password.isEmpty) {
    //   showMessage('El usuario y la contraseña son requeridos');
    // } else {
    //   setState(() {
    //     _progressLogin = true;
    //     _textBtnLogin = "VALIDANDO DATOS...";
    //   });

    //   Map response = await loginProvider.loginValidate(_username, _password);
    // print('response: ${response}');

    // if (response['message'] == 'Datos correctos') {
    // if (response != '') {
    //   print("entra en metodo ok");

    //   print(response['idInvitado']);

    //   // prefss.id_Novios = response['idNovios'];
    //   //prefs.logeado = true;
    //   //prefs = response['idNovios'];

    //   // prefs.recepcionFecha = response['recepcionFecha'];
    //   // prefs.correoRegistro = _username;

    //   print("usuario correcto");

    //   // Map response2 = await novioProvider.novioValidate(prefss.id_Novios);

    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => TabsScreen()),
    //   );

    //   // Navigator.pushReplacement(context,
    //   //                 MaterialPageRoute(builder: (context) {
    //   //               return DashboardRepartidor(
    //   //                   userInfo: userFromJson(response.body));
    //   //             }));
    // } else {
    //   print("usuario incorrecto");
    //   showMessage(response['response']);
    //   setState(() {
    //     _progressLogin = false;
    //     _textBtnLogin = "INICIAR SESIÓN";
    //   });
    // }
    // print("usuario correcto");
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(builder: (context) => TabsScreen(idNovio: response['idNovios'],)),
    //         // MaterialPageRoute(builder: (context) => TabsScreen(idNovio: 1,)),
    //       );

    //       //Shared preference

    //       // print( 'Nombre novia: ${datosNovios.getNombreNovia(1)}');
    //       // print( 'Nombre novio: ${datosNovios.getNombreNovio(1)}');
    //     } else {
    //       print("usuario incorrecto");
    //       showMessage(response['response']);
    //       setState(() {
    //         _progressLogin = false;
    //         _textBtnLogin = "INICIAR SESIÓN";
    //       });
    //     }
    //   }
    // }

    // void showMessage(String message) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(
    //       content: Text(message,
    //           textAlign: TextAlign.center, style: const TextStyle(fontSize: 15)),
    //       duration: const Duration(seconds: 3),
    //     ),
    //   );
    // }

    // void asignarValor( int idNovios ) async {
    //   // DatosNoviosProvider(idNovios);
    //   datosNovios.getDatos(idNovios);
    //   // await Future.delayed(Duration(seconds: 2));
    //   print('nombre noviaaaa: ${datosNovios.nombreNovia}');
    // }
  }
}
