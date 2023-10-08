import 'package:flutter/material.dart';

class FavoriteRecipesScreen extends StatelessWidget {
  final List<Map<String, dynamic>> favoriteRecipes;

  const FavoriteRecipesScreen({Key? key, required this.favoriteRecipes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Recipes'),
      ),
      body: ListView.builder(
        itemCount: favoriteRecipes.length,
        itemBuilder: (context, index) {
          final recipe = favoriteRecipes[index];

          final imageUrl = recipe['urlToImage'];

          return Card(
            elevation: 2.0,
            child: Column(
              children: <Widget>[
                if (imageUrl !=
                    null) // Display image if 'urlToImage' is not null

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      imageUrl,

                      height: 100, // Adjust the height as needed
                    ),
                  ),
                if (imageUrl ==
                    null) // Display "Image not found" if 'urlToImage' is null

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Image not found',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    recipe['source']['name'],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    recipe['title'],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
