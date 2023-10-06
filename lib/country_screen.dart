

// class CountryScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) => CountryBloc(),
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Select Country'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               CountryButton(Country.USA),
//               CountryButton(Country.Canada),
//               CountryButton(Country.UK),
//               CountryButton(Country.Australia),
//               CountryButton(Country.Germany),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CountryButton extends StatelessWidget {
//   final Country country;

//   CountryButton(this.country);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ElevatedButton(
//         onPressed: () {
//           BlocProvider.of<CountryBloc>(context)
//               .add(SelectCountryEvent(country));
//         },
//         child: Text(getCountryName(country)),
//       ),
//     );
//   }

//   String getCountryName(Country country) {
//     switch (country) {
//       case Country.USA:
//         return 'USA';
//       case Country.Canada:
//         return 'Canada';
//       case Country.UK:
//         return 'UK';
//       case Country.Australia:
//         return 'Australia';
//       case Country.Germany:
//         return 'Germany';
//     }
//   }
// }
