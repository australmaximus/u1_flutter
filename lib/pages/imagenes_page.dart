import 'package:flutter/material.dart';
import 'package:u1_300/widgets/game_card.dart';

class ImagenesPage extends StatelessWidget {
  const ImagenesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.games),
        backgroundColor: Colors.red,
        title: Text('Ejemplo Imágenes - Juegos'),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        reverse: true,
        children: [
          GameCard(
            nombre: 'Grand Theft Auto V',
            imagen: 'GTA-V.jpg',
            precio: '8000',
          ),
          GameCard(
            nombre: 'Watch Dogs 2',
            imagen: 'Watch_Dogs_2.jpg',
            precio: '12.000',
          ),
          GameCard(
            nombre: 'Battlefield 1',
            imagen: 'Battlefield_1.jpg',
            precio: '5000',
          ),
        ],
      ),
    );
  }
}
