import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  final String imagen, nombre, precio;

  GameCard({this.imagen = "", this.nombre = "", this.precio = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      //borde del contenedor
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Image(
            width: 250,
            //imagen local
            image: AssetImage('assets/images/juegos/' + this.imagen),
          ),
          Text(
            this.nombre,
            style: TextStyle(fontSize: 20),
          ),
          Icon(Icons.price_check),
          Text(
            '\$' + this.precio,
            style: TextStyle(
                fontSize: 16, color: Colors.green, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
