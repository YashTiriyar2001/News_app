abstract class NewsState {}

class NewsInitialState extends NewsState {}

class RecipeLoadingState extends NewsState {}

class NewsLoadedState extends NewsState {
  final List<Map<String, dynamic>> sources;

  NewsLoadedState({required this.sources});
}

class NewsErrorState extends NewsState {
  final String error;

  NewsErrorState({required this.error});
}
