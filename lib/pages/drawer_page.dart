import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_300/pages/tabs/tab_home.dart';
import 'package:u1_300/pages/tabs/tab_lanzamientos.dart';
import 'package:u1_300/pages/tabs/tab_naves.dart';
import 'package:u1_300/pages/tabs/tab_visitantes.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body: Text('Home'),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        //recortar la image, se pone de fondo del shape
                        image: AssetImage('assets/images/Android.jpg'),
                      ),
                      border: Border.all(color: Color(0xFFC6D57E), width: 3),
                    ),
                  ),
                  Text('Usuario'),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                MdiIcons.earth,
                color: Color(0xFFD51E2D),
              ),
              title: Text('Inicio'),
              onTap: () => _navegar(context, 1),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              leading: Icon(
                MdiIcons.rocketLaunchOutline,
                color: Color(0xFFD51E2D),
              ),
              title: Text('Lanzamientos'),
              onTap: () => _navegar(context, 2),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              leading: Icon(
                MdiIcons.ufoOutline,
                color: Color(0xFFD51E2D),
              ),
              title: Text('Naves'),
              onTap: () => _navegar(context, 3),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              leading: Icon(
                MdiIcons.alienOutline,
                color: Color(0xFFD51E2D),
              ),
              title: Text('Visitantes'),
              onTap: () => _navegar(context, 4),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              leading: Icon(
                MdiIcons.arrowLeftBoldCircle,
                color: Color(0xFFD51E2D),
              ),
              title: Text('Cerrar'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _navegar(BuildContext context, int pagina) {
    List<Widget> paginas = [
      TabsHomePage(),
      TabsLanzamientosPage(),
      TabsNavesPage(),
      TabsVisitantesPage(),
    ];

    final route = new MaterialPageRoute(builder: (context) {
      return paginas[pagina - 1];
    });

    //antes de moverse a la pagina nueva, cierra el Drawer
    Navigator.pop(context);
    Navigator.push(context, route);
  }
}
