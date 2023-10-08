import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/country_bloc/bloc/country_bloc.dart';
import 'package:flutter/material.dart';
import 'country_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CountryScreen(),
    );
  }
}


