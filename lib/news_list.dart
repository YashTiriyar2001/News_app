import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/news_bloc.dart';
import 'bloc/news_event.dart';
import 'bloc/news_state.dart';
import 'news_detail_screen.dart';

class NewsList extends StatefulWidget {
  const NewsList({Key? key});

  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  final List<int> selectedIndices = [];
  final List<Map<String, dynamic>> favoriteNews = [];

  @override
  Widget build(BuildContext context) {
    final recipeBloc = BlocProvider.of<NewsBloc>(context);
    recipeBloc.add(FetchNewsEvent());

    return Scaffold(
      body: BlocBuilder<NewsBloc, NewsState>(
        builder: (context, state) {
          if (state is RecipeLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is NewsLoadedState) {
            return ListView.builder(
              itemCount: state.sources.length,
              itemBuilder: (context, index) {
                final source = state.sources[index];
                final isFavorite = selectedIndices.contains(index);
                final imageUrl = source['urlToImage'];

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            RecipeDetailScreen(source: source),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 2.0,
                    child: Column(
                      children: <Widget>[
                        if (imageUrl != null)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                              imageUrl,
                              height: 100,
                            ),
                          ),
                        if (imageUrl == null)
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
                            source['source']['name'],
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            source['title'],
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: isFavorite ? Colors.red : Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              if (isFavorite) {
                                selectedIndices.remove(index);
                                favoriteNews.remove(source);
                              } else {
                                selectedIndices.add(index);
                                favoriteNews.add(source);
                              }
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else if (state is NewsErrorState) {
            return Center(child: Text('Error: ${state.error}'));
          } else {
            return Container();
          }
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShareScreen(),
                ),
              );
            },
            child: Icon(Icons.share),
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoriteRecipesScreen(
                    favoriteRecipes: favoriteNews,
                  ),
                ),
              );
            },
            child: Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}



// import 'package:flutter/material.dart';
