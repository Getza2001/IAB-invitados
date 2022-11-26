import 'package:flutter/material.dart';
import 'package:flutter_iab_invitados/providers/login_provider.dart';
import 'package:flutter_iab_invitados/screens/tabs_screen.dart';
import 'package:flutter_iab_invitados/shared_prefs/user_preferences.dart';

import '../widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = false;
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // UserData userData = UserData();

  // void submit() {
  //   if (_formKey.currentState!.validate()) {
  //     _formKey.currentState!.save();
  //     //loginwithDB();
  //   }
  // }

  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  //Instance the shared preferences
  final prefs = PreferenciasUsuario();

  //Global Keys
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  //Provider
  final loginProvider = LoginProvider();

  //Variables
  String _username = "";
  String _password = "";
  String _textBtnLogin = "LOGIN";
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
                                    // onSaved: (value) {
                                    //   //userData.email = value!;
                                    // },
                                    onSaved: (value) =>
                                        _username = value.toString(),
                                    initialValue: 'cjmc12@hotmail.com',
                                    //keyboardType: TextInputType.emailAddress,
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
                                        initialValue: 'admin',
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
                              // onPressed: validate,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TabsScreen()),
                                );
                              },
                              child: const Text('INICIAR SESIÓN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400)),
                              style: OutlinedButton.styleFrom(
                                backgroundColor:
                                    Color.fromRGBO(255, 64, 129, 1),
                                elevation: 0,
                                // shape: RoundedRectangleBorder(
                                //   borderRadius: BorderRadius.circular(50),
                                // ),
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

    var form = formKey.currentState;
    form!.save();

    if (_username.isEmpty || _password.isEmpty) {
      print("son requeridos");
      //showMessage('El usuario y la contraseña son requeridos');
    } else {
      print("validando datos");
      // setState(() {
      //   _progressLogin = true;
      //   _textBtnLogin = "VALIDANDO DATOS...";
      // });

      Map response = await loginProvider.loginValidate(_username, _password);

      // if (response['ok'] == true) {
      //   prefs.logeado = true;
      //   prefs.idNovios = response['idNovios'];
      //   prefs.recepcionFecha = response['recepcionFecha'];
      //   prefs.correoRegistro = _username;

      //   // Navigator.pushNamedAndRemoveUntil(
      //   //     context, '/home', ModalRoute.withName('/home'));
      // } else {
      //   //showMessage(response['response']);
      //   setState(() {
      //     _progressLogin = false;
      //     _textBtnLogin = "LOGIN";
      //   });
      // }
    }
  }

  // void showMessage(String message) {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       content: Text(message,
  //           textAlign: TextAlign.center, style: const TextStyle(fontSize: 15)),
  //       duration: const Duration(seconds: 3),
  //     ),
  //   );
  // }
}
