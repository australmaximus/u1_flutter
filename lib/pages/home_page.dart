import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo 1 DAM020'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.bug_report, size: 50, color: Colors.red),
          Text('Hola Mundo'),
          Text('DAM020'),
          Text('2021'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Elemento 1'),
              Text('Elemento 2'),
              Text('Elemento 3'),
            ],
          ),
        ],
      ),
    );
  }
}
