import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iab_invitados/providers/fotos_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_iab_invitados/screens/screens.dart';
import '../styles/colors/colors_view.dart';

class Fotos extends StatefulWidget {
  const Fotos({super.key});

  @override
  State<Fotos> createState() => _FotosState();
}

class _FotosState extends State<Fotos> {
  final fotoProvider = FotosProvider();
  final picker = ImagePicker();
  File? imagen = null;
  int op = 0;
  String? imagen64;
  String? nombre;

  Future opcFoto(op) async {
    var pickedFile;

    if (op == 1) {
      pickedFile = await picker.pickImage(source: ImageSource.camera);
    } else if (op == 2) {
      pickedFile = await picker.pickImage(source: ImageSource.gallery);
    }

    setState(() {
      if (pickedFile != null) {
        imagen = File(pickedFile.path);
        print("bien foto");
        print(imagen);
        nombre = pickedFile.path;
        print(nombre);

        final nameImage = (imagen.toString()).split('/').last.split("'")[0];

        print(nameImage);

        final formtImage = (imagen.toString()).split('.').last.split("'")[0];

        //convertir a bit
        final bitImage = imagen!.readAsBytesSync();

        //base 64
        final base64Imagen = base64Encode(bitImage);

        print(base64Imagen);

        //poner bien lo que falta
        final imagenFile = "data:image/$formtImage;base64,$base64Imagen";
        print(imagenFile);

        nombre = nameImage;
        imagen64 = base64Imagen;

        // Base64();
        showDialog(context: context, builder: (context) => opcImagen());

        //base 64
      } else {
        showMessage('No hay foto seleccionada o capturada');
        nombre = null;
        imagen64 = null;
      }
    });
  }

  void showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message,
            textAlign: TextAlign.center, style: const TextStyle(fontSize: 15)),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  // Base64() async {
  //   imagen64 = base64.encode(await new File(nombre).readAsBytesSync());
  //   print(imagen64);
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorSelect.fondo,
      height: 500,
      width: 365,
      child: Column(
        children: [
          Container(
            //padding: const EdgeInsets.all(10),
            height: 50,
            width: 365,
            color: Colors.white,
            // margin: const EdgeInsets.all(15),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text('Momentos Especiales',
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ColorSelect.secondaryText,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ],
            ),
          ),
          Container(
            height: 230,
            //color: Colors.white,
            margin: const EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
                color: ColorSelect.fondo,
                borderRadius: BorderRadius.circular(5),
                //color: Colors.red,
                border: Border.all(
                  style: BorderStyle.none,
                  color: Colors.grey,
                ),
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.normal,
                    // color: Colors.grey,
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 2,
                  )
                ]),
            child: Column(
              children: [
                // imagen == null ? Center() : Image.file(imagen),
                Container(
                  height: 105,
                  width: 365,
                  //color: Colors.white,

                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/tomarfotos.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 355,
                          height: 50,
                          child: OutlinedButton(
                            // onPressed: validate,
                            onPressed: () {
                              op = 1;
                              opcFoto(op);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Tomar una foto",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    )),
                                Icon(
                                  Icons.linked_camera,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            style: OutlinedButton.styleFrom(
                              backgroundColor: ColorSelect.primary,
                              elevation: 0,
                            ),
                          ),
                        ),
                      ],
                    )),

                Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 355,
                          height: 50,
                          child: OutlinedButton(
                            // onPressed: validate,
                            onPressed: () {
                              op = 2;
                              opcFoto(op);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Seleccionar una foto",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    )),
                                Icon(
                                  Icons.photo,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            style: OutlinedButton.styleFrom(
                              backgroundColor: ColorSelect.primary,
                              elevation: 0,
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  opcImagen() {
    return AlertDialog(actions: [
      Container(
        height: 380,
        //color: Colors.white,

        child: Column(
          children: [
            // imagen == null ? Center() : Image.file(imagen),
            Container(
              height: 320,
              //width: 365,
              child: Image.file(imagen!),
            ),

            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Column(
                      children: [
                        SizedBox(
                          //width: 355,
                          height: 50,
                          child: OutlinedButton(
                            // onPressed: validate,
                            onPressed: () {
                              //opcFoto(1);
                              GuardarFoto();
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.save,
                                  color: Colors.white,
                                ),
                                Text("Guardar",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    )),
                              ],
                            ),
                            style: OutlinedButton.styleFrom(
                              backgroundColor: ColorSelect.primary,
                              elevation: 0,
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Column(
                      children: [
                        SizedBox(
                          //width: 355,
                          height: 50,
                          child: OutlinedButton(
                            // onPressed: validate,
                            onPressed: () {
                              opcFoto(op);
                              Navigator.of(context).pop();
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.restart_alt_rounded,
                                  color: Colors.white,
                                ),
                                Text("Reintentar",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    )),
                              ],
                            ),
                            style: OutlinedButton.styleFrom(
                              backgroundColor: ColorSelect.primary,
                              elevation: 0,
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Column(
                      children: [
                        SizedBox(
                          //width: 355,
                          height: 50,
                          child: OutlinedButton(
                            // onPressed: validate,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.cancel,
                                  color: Colors.white,
                                ),
                                Text("Cancelar",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    )),
                              ],
                            ),
                            style: OutlinedButton.styleFrom(
                              backgroundColor: ColorSelect.primary,
                              elevation: 0,
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    ]);
  }

  void GuardarFoto() async {
    var data = {'imagen': imagen64, 'idInvitado': 1};

    var response = await fotoProvider.fotoValidate(data);
    // var conte = json.decode(response);

    print(response.body);
  }
}
