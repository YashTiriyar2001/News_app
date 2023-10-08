import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'news_event.dart';
import 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
// Add the country parameter

  NewsBloc() : super(NewsInitialState());

  @override
  Stream<NewsState> mapEventToState(NewsEvent event) async* {
    if (event is FetchNewsEvent) {
      yield RecipeLoadingState();
      try {
        final sources = await _fetchNews();
        yield NewsLoadedState(sources: sources);
      } catch (e) {
        yield NewsErrorState(error: 'Failed to fetch news.');
      }
    }
  }

  Future<List<Map<String, dynamic>>> _fetchNews() async {
    final response = await http.get(
      Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=003e7a73115e4ba3becac7a1ce48fe0b'),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return List<Map<String, dynamic>>.from(data['articles']);
    } else {
      throw Exception('Failed to load recipes');
    }
  }
}
