import 'package:flutter/material.dart';

import 'package:flutter_iab_invitados/screens/screens.dart';
import 'package:provider/provider.dart';


import '../providers/datos_novios_provider.dart';
import '../widgets/widgets.dart';



class TabsScreen extends StatelessWidget {
  TabsScreen({Key? key, required this.idNovio}) : super(key: key);
  final int idNovio;

    final List<String> menuContent = [
    'Configuración',
    'Acerca de',
    'Nosotros',
    'Cerrar sesión'
  ];

  @override
  Widget build(BuildContext context) {

    // final noviosProvider = Provider.of<DatosNoviosProvider>(context);
    // print('datos novios provider: ${noviosProvider.onDisplayNovios}');

    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: Image.asset('assets/images/logo.png'),
                  onPressed: () {},
                );
              },
            ),
            title: const Padding(
              padding: EdgeInsets.all(1.0),
              child: Text(
                'Invitados',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'DancingScript',
                    fontWeight: FontWeight.w500,
                    fontSize: 25.0),
              ),
            ),
            actions: [
              PopupMenuButton(
                icon: const Icon(Icons.more_vert, color: Colors.black),
                itemBuilder: (context) {
                  return menuContent
                      .map((e) =>
                          PopupMenuItem<String>(value: e, child: Text(e)))
                      .toList();
                },
                onSelected: (value) {
                  switch (value) {
                    case 'Configuración':
                      print('luego');
                      // showDialog(context: context, builder: (context) => aboutShow());
                      break;
                    case 'Acerca de':
                      showDialog(
                          context: context, builder: (context) => AboutShow());
                      break;
                    case 'Nosotros':
                      showDialog(
                          context: context,
                          builder: (context) => NosotrosShow());
                      break;
                    case 'Cerrar sesión':
                      print('Cerrar');
                      showDialog(
                          context: context,
                          builder: (context) => CerrarSesion());
                      break;
                  }
                },
              ),
            ],
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: SafeArea(
            child: Column(
              children: [
                // Text('Hola desde tab screen'),
                TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey[800],
                  indicatorColor: Colors.pink,
                  indicatorWeight: 3.0,
                  isScrollable: true,
                  tabs: const [
                    Tab(text: 'Inicio'),
                    Tab(text: 'Boleto'),
                    Tab(text: 'Mesa'),
                    Tab(text: 'Bebidas'),
                    Tab(text: 'Música'),
                    Tab(text: 'Fotos'),
                  ],
                ),
                Expanded(
                    child: TabBarView(children: [
                  Column(
                    children: [
                      SizedBox(height: 15),
                      CustomCard(),
                      SizedBox(height: 15),
                      InfoTiempo(),
                      SizedBox(height: 10),
                      InfoMisa(idNovios: idNovio),
                      SizedBox(height: 15),
                      InfoRecepcion(idNovios: idNovio),
                      SizedBox(height: 20),
                      DeslizaBar()
                    ],
                  ),
                  const Center(child: Text('Boleto')),
                  // const Center(child: Text('Mesa'),),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [const Mesa()],
                  ),
                  Column(
                    children: [const Bebida()],
                  ),
                  // const Center(child: Text('Bebidas'),),
                  const Center(child: Text('Musica')),
                  // const Center(child: Text('Fotos'),),
                  Column(
                    children: const [SizedBox(height: 15), Fotos()],
                  )
                ])),
              ],
            ),
          ),
        ));
  }
}
