import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_300/pages/tabs/tab_home.dart';
import 'package:u1_300/pages/tabs/tab_lanzamientos.dart';
import 'package:u1_300/pages/tabs/tab_naves.dart';
import 'package:u1_300/pages/tabs/tab_visitantes.dart';

class BottomNavPage extends StatefulWidget {
  BottomNavPage({Key? key}) : super(key: key);

  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _currentIndex = 0;

  // List<Widget> _paginas = [
  //   TabsHomePage(),
  //   TabsLanzamientosPage(),
  //   TabsNavesPage(),
  //   TabsVisitantesPage(),
  // ];

  var _paginas = [
    {
      'pagina': TabsHomePage(),
      'texto': 'Inicio',
      'icono': MdiIcons.earth,
      'color': 0XFF026597,
    },
    {
      'pagina': TabsLanzamientosPage(),
      'texto': 'Lanzamientos',
      'icono': MdiIcons.rocketLaunchOutline,
      'color': 0XFFD51E2D,
    },
    {
      'pagina': TabsNavesPage(),
      'texto': 'Naves',
      'icono': MdiIcons.ufoOutline,
      'color': 0XFFFCAF27,
    },
    {
      'pagina': TabsVisitantesPage(),
      'texto': 'Visitantes',
      'icono': MdiIcons.alienOutline,
      'color': 0XFF990099,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(_paginas[_currentIndex]['icono'] as IconData),
        title:
            Text('BottomNav: ' + _paginas[_currentIndex]['texto'].toString()),
        backgroundColor:
            Color(int.parse(_paginas[_currentIndex]['color'].toString())),
      ),
      //body: _paginas[_currentIndex], //muestrame la pagina que esta seleccionada
      body: _paginas[_currentIndex]['pagina'] as Widget, //otra forma
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: _paginas.map((p) {
          return BottomNavigationBarItem(
            icon: Icon(p['icono'] as IconData),
            label: p['texto'].toString(),
            backgroundColor: Color(int.parse(p['color'].toString())),
          );
        }).toList(),
        // items: [
        //   BottomNavigationBarItem(
        //     icon: Icon(_paginas[0]['icono'] as IconData),
        //     label: _paginas[0]['texto'].toString(),
        //     backgroundColor: Color(int.parse(_paginas[0]['color'].toString())),
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(_paginas[1]['icono'] as IconData),
        //     label: _paginas[1]['texto'].toString(),
        //     backgroundColor: Color(int.parse(_paginas[1]['color'].toString())),
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(_paginas[2]['icono'] as IconData),
        //     label: _paginas[2]['texto'].toString(),
        //     backgroundColor: Color(int.parse(_paginas[2]['color'].toString())),
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(_paginas[3]['icono'] as IconData),
        //     label: _paginas[3]['texto'].toString(),
        //     backgroundColor: Color(int.parse(_paginas[3]['color'].toString())),
        //   ),
        // ],
        //Seleccionar el clickeado, opción marcada
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
