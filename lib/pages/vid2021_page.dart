import 'package:flutter/material.dart';
import 'package:u1_300/widgets/box_ejemplo.dart';
import 'package:u1_300/widgets/box_titulo.dart';

class ViD2021Page extends StatefulWidget {
  const ViD2021Page({Key? key}) : super(key: key);

  @override
  _ViD2021PageState createState() => _ViD2021PageState();
}

class _ViD2021PageState extends State<ViD2021Page> {
  //indice del stack para controlar
  int _stackIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Videos 20 y 21'),
      ),
      //envolvemos la columna dentro de un SingleChildScrollView para eliminar el overflow si algo se sale de la pantalla
      // y poder deslizarnos hacia abajo
      body: SingleChildScrollView(
        child: Column(
          children: [
            BoxTitulo(
              titulo: 'Expanded',
            ),
            //espacio para colocar contenedores
            Container(
              height: 100,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                border: Border.all(color: Colors.blue.shade100),
              ),
              child: Row(
                children: [
                  //atributos de la caja
                  BoxEjemplo(
                    texto: '1',
                    color: 0xFF1E6096,
                    ancho: 60,
                    alto: double.infinity,
                  ),
                  //Expanded los hace crecer, los divide pero en la cantidad de expanded que exista.
                  //En conclusion, Expanded le dices al widget que se estire para ocupar el espacio disponible no lo esta ocupando nadie.
                  Expanded(
                      flex: 2,
                      child: BoxEjemplo(
                        texto: '2',
                        color: 0xFF39A99E,
                        ancho: 60,
                        alto: double.infinity,
                      )),
                  BoxEjemplo(texto: '3', color: 0xFFEECF59),
                  //se puede manipular la proporcion del expanded con el flex
                  Expanded(
                      flex: 2,
                      child: BoxEjemplo(
                        texto: '4',
                        color: 0xFFE65239,
                        ancho: 60,
                        alto: double.infinity,
                      )),
                ],
              ),
            ),
            BoxTitulo(
              titulo: 'Spacer',
            ),
            Container(
              height: 100,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                border: Border.all(color: Colors.blue.shade100),
              ),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //atributos de la caja
                  BoxEjemplo(
                    texto: '1',
                    color: 0xFF1E6096,
                    ancho: 60,
                    alto: double.infinity,
                  ),
                  //espaciador, ese que esta al final, que vaya del 1 al 2
                  //En conclusion, Spacer redistribuye ese espacio a donde nosotros queramos.
                  Spacer(flex: 2),
                  BoxEjemplo(
                    texto: '2',
                    color: 0xFF39A99E,
                    ancho: 60,
                    alto: double.infinity,
                  ),
                  BoxEjemplo(
                    texto: '3',
                    color: 0xFFEECF59,
                    ancho: 60,
                    alto: double.infinity,
                  ),
                  Spacer(),
                  BoxEjemplo(
                    texto: '4',
                    color: 0xFFE65239,
                    ancho: 60,
                    alto: double.infinity,
                  ),
                ],
              ),
            ),
            //Stack nos permite color un widget encima de otro
            BoxTitulo(
              titulo: 'Stack',
            ),
            Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                border: Border.all(color: Colors.green.shade100),
              ),
              child: Stack(
                //Quitar overflow, que se salga del stack
                //clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    color: Color(0xFFEECF59),
                  ),
                  Positioned(
                    // right: 0,
                    bottom: -40,
                    left: 70,
                    //top: 60,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Color(0xFFE65239),
                    ),
                  )
                ],
              ),
            ),
            BoxTitulo(
              titulo: 'Indexed Stack',
            ),
            Container(
              height: 200,
              alignment: Alignment.center,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                border: Border.all(color: Colors.green.shade100),
              ),
              child: IndexedStack(
                index:
                    _stackIndex, // lista 0, 1, 2, 3, con esto se controla cual esta visible
                children: [
                  BoxEjemplo(texto: '1', color: 0xFF1E6096),
                  BoxEjemplo(texto: '2', color: 0xFF39A99E),
                  BoxEjemplo(texto: '3', color: 0xFFEECF59),
                  BoxEjemplo(texto: '4', color: 0xFFE65239),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: Text('Uno'),
                    onPressed: () => _cambiarStackIndex(1),
                  ),
                  ElevatedButton(
                    child: Text('Dos'),
                    onPressed: () => _cambiarStackIndex(2),
                  ),
                  ElevatedButton(
                    child: Text('Tres'),
                    onPressed: () => _cambiarStackIndex(3),
                  ),
                  ElevatedButton(
                    child: Text('Cuatro'),
                    onPressed: () => _cambiarStackIndex(4),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Funciona
  void _cambiarStackIndex(int index) {
    setState(() {
      _stackIndex = index - 1;
    });
  }
}
