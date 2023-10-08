import 'package:flutter_bloc/flutter_bloc.dart';

// Enum representing different countries
enum Country { USA, Canada, UK, Australia, Germany }

// Define events
abstract class CountryEvent {}

class SelectCountryEvent extends CountryEvent {
  final Country country;

  SelectCountryEvent(this.country);
}

// Define states
abstract class CountryState {}

class CountrySelectedState extends CountryState {
  final Country selectedCountry;

  CountrySelectedState(this.selectedCountry);
}

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  CountryBloc() : super(CountrySelectedState(Country.USA));

  @override
  Stream<CountryState> mapEventToState(CountryEvent event) async* {
    if (event is SelectCountryEvent) {
      yield CountrySelectedState(event.country);
    }
  }
}
