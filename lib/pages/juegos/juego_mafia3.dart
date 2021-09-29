import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class JuegoMafia3 extends StatelessWidget {
  const JuegoMafia3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle Juego'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Text('Mafia 3'),
      ),
    );
  }
}
