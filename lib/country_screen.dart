
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/country_bloc/bloc/country_bloc.dart';
import 'package:flutter/material.dart';

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
              CountryButton(Country.USA, 'us'),
              CountryButton(Country.India, 'in'),
              CountryButton(Country.UK, 'uk'),
              CountryButton(Country.Australia, 'au'),
              CountryButton(Country.Japan, 'jp'),
            ],
          ),
        ),
      ),
    );
  }
}

class CountryButton extends StatelessWidget {
  final Country country;
  final String countrycode;

  CountryButton(this.country, this.countrycode);

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
        return 'usa';
      case Country.India:
        return 'in';
      case Country.UK:
        return 'UK';
      case Country.Australia:
        return 'Au';
      case Country.Japan:
        return 'jp';
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


