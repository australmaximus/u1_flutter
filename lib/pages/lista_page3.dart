import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Lista3Page extends StatelessWidget {
  final peliculas = [
    {"titulo": "Odgrobadogroba", "genero": "Comedy|Drama"},
    {"titulo": "Wild Love", "genero": "Drama"},
    {"titulo": "Empire Records", "genero": "Comedy|Drama"},
    {"titulo": "Father Sergius (Otets Sergiy)", "genero": "Drama|Romance"},
    {"titulo": "Girlfight", "genero": "Drama"},
    {"titulo": "Closing the Ring", "genero": "Drama|Romance"},
    {"titulo": "Bang Bang", "genero": "Comedy"},
    {"titulo": "Stand by Me", "genero": "Adventure|Drama"},
    {"titulo": "Assault on Precinct 13", "genero": "Action|Thriller"},
    {
      "titulo": "My Life as a Dog (Mitt liv som hund)",
      "genero": "Comedy|Drama"
    },
    {"titulo": "French Roast", "genero": "Animation|Comedy"},
    {"titulo": "Pentimento", "genero": "Drama"},
    {"titulo": "Hamsun", "genero": "Drama|War"},
    {"titulo": "Almost an Angel", "genero": "Comedy"},
    {"titulo": "Daylight (Daglicht)", "genero": "Action|Thriller"},
    {"titulo": "The Hearts of Age", "genero": "(no genres listed)"},
    {"titulo": "Above and Beyond", "genero": "Action|Drama"},
    {"titulo": "Giliap", "genero": "Crime|Drama"},
    {"titulo": "Cooperstown", "genero": "Drama"},
    {"titulo": "Loose Change 9/11: An American Coup", "genero": "Documentary"},
    {"titulo": "Finisterrae", "genero": "(no genres listed)"},
    {"titulo": "Sherlock Holmes Faces Death", "genero": "Crime|Mystery"},
    {
      "titulo":
          "41-Year-Old Virgin Who Knocked Up Sarah Marshall and Felt Superbad About It, The",
      "genero": "Comedy"
    },
    {"titulo": "Flicka", "genero": "Children|Drama"},
    {"titulo": "Tree, The", "genero": "Children|Drama"},
    {"titulo": "Cassandra's Dream", "genero": "Crime|Drama|Thriller"},
    {"titulo": "Operación Cannabis", "genero": "Action|Adventure|Comedy|Crime"},
    {"titulo": "Total Recall", "genero": "Action|Adventure|Sci-Fi|Thriller"},
    {"titulo": "Glenn, the Flying Robot", "genero": "Sci-Fi"},
    {"titulo": "Halloween 5: The Revenge of Michael Myers", "genero": "Horror"},
    {
      "titulo": "Those Magnificent Men in Their Flying Machines",
      "genero": "Action|Adventure|Comedy"
    },
    {"titulo": "Century of the Self, The", "genero": "Documentary"},
    {"titulo": "Gimme Shelter", "genero": "Drama"},
    {"titulo": "Werewolf Woman (La lupa mannara)", "genero": "Horror"},
    {
      "titulo": "TMNT (Teenage Mutant Ninja Turtles)",
      "genero": "Action|Adventure|Animation|Children|Comedy|Fantasy"
    },
    {"titulo": "3 Ninjas Kick Back", "genero": "Action|Children|Comedy"},
    {
      "titulo": "Flintstone Kids' Just Say No Special, The",
      "genero": "Animation|Children"
    },
    {
      "titulo":
          "Voyage to the Beginning of the World (Viagem ao Princípio do Mundo)",
      "genero": "Drama"
    },
    {"titulo": "I Love Trouble", "genero": "Crime|Drama"},
    {"titulo": "Breed, The", "genero": "Action|Adventure|Horror"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas 3'),
      ),
      body: Column(
        children: [
          Container(
            color: Color(0XFF96D0D8),
            width: double.infinity,
            height: 50,
            alignment: Alignment.center,
            child:
                Text('Peliculas disponibles', style: TextStyle(fontSize: 20)),
          ),
          Expanded(
            child: ListView(
              //iterar equipos, llenar el children
              children: peliculas.map<Widget>((pelicula) {
                return Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.movie),
                      //iconos material design
                      trailing: Icon(
                        MdiIcons.movieRoll,
                        color: Color(0XFFF75431),
                      ),
                      title: Text(pelicula['titulo'].toString()),
                      subtitle: Text(pelicula['genero'].toString()),
                      onTap: () {
                        print(pelicula['titulo']);
                      },
                    ),
                    Divider(
                      thickness: 0.7,
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
