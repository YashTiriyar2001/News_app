import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:recipe_2/news_list.dart';
import 'bloc/news_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => NewsBloc(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('News App'),
          ),
          body: NewsList(),
        ),
      ),
    );
  }
}
