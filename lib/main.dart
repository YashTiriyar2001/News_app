import 'package:flutter/material.dart';
// import 'country_screen.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/country_bloc/bloc/country_bloc.dart';

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

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'country_bloc.dart';

class CountryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CountryBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Select Country'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CountryButton(Country.USA, 'https://example.com/usa'),
              CountryButton(Country.Canada, 'https://example.com/canada'),
              CountryButton(Country.UK, 'https://example.com/uk'),
              CountryButton(Country.Australia, 'https://example.com/australia'),
              CountryButton(Country.Germany, 'https://example.com/germany'),
            ],
          ),
        ),
      ),
    );
  }
}

class CountryButton extends StatelessWidget {
  final Country country;
  final String url;

  CountryButton(this.country, this.url);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          // Navigate to a new page when the button is pressed
          // _navigateToNewPage(context);
        },
        child: Text(getCountryName(country)),
      ),
    );
  }

  String getCountryName(Country country) {
    switch (country) {
      case Country.USA:
        return 'USA';
      case Country.Canada:
        return 'Canada';
      case Country.UK:
        return 'UK';
      case Country.Australia:
        return 'Australia';
      case Country.Germany:
        return 'Germany';
    }
  }

  void _navigateToNewPage(BuildContext context) {
    // Navigate to a new page based on the selected country
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => NewPage(url)),
    // );
  }
}

// class NewPage extends StatelessWidget {
//   final String url;

//   NewPage(this.url);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('New Page'),
//       ),
//       body: Center(
//         child: Text('You selected a country! URL: $url'),
//       ),
//     );
//   }
// }
