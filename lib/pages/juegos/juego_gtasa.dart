import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class JuegoGTASA extends StatelessWidget {
  const JuegoGTASA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle Juego'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Grand Theft Auto San Andreas'),
            OutlinedButton(
              child: Text('Volver'),
              onPressed: () {
                //sacar paginas de la fila
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
