import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_300/pages/juegos/juego_gtasa.dart';
import 'package:u1_300/pages/juegos/juego_mafia3.dart';
import 'package:u1_300/pages/juegos/juego_pvz.dart';

class ListaJuegosPage extends StatelessWidget {
  const ListaJuegosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.games),
        title: Text('Lista de Juegos'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(MdiIcons.gamepadSquare),
            title: Text('Grand Theft Auto San Andreas'),
            subtitle: Text('\$ 3000'),
            onTap: () {
              //construye una ruta
              MaterialPageRoute route =
                  new MaterialPageRoute(builder: (context) {
                return JuegoGTASA();
              });
              //navega a la ruta, push y pop, para agregar y sacar paginas de la fila
              Navigator.push(context, route);
            },
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            leading: Icon(MdiIcons.gamepadSquare),
            title: Text('Mafia 3'),
            subtitle: Text('\$ 5800'),
            onTap: () {
              //construye una ruta
              MaterialPageRoute route =
                  new MaterialPageRoute(builder: (context) {
                return JuegoMafia3();
              });
              //navega a la ruta
              Navigator.push(context, route);
            },
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            leading: Icon(MdiIcons.gamepadSquare),
            title: Text('Plantas vs Zombis'),
            subtitle: Text('\$ 1000'),
            onTap: () {
              //construye una ruta
              MaterialPageRoute route =
                  new MaterialPageRoute(builder: (context) {
                return JuegoPVZ();
              });
              //navega a la ruta
              Navigator.push(context, route);
            },
          ),
          Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
