import 'package:app_trips/Widgets/listview_customer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/places_providers.dart';

void main() => runApp(const Screenprincipal());

class Screenprincipal extends StatelessWidget {
  const Screenprincipal({super.key});

  @override
  Widget build(BuildContext context) {
    final placesProvider = Provider.of<PlaceProvider>(context, listen: true);
    return MaterialApp(
      title: 'Strips App',
      home: DefaultTabController(
        length: 5, // Número de pestañas
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Strips App'),
            bottom: TabBar(
              onTap: (index) => placesProvider.getPlacesList(index),
              tabs: [
                Tab(text: 'Chile'),
                Tab(text: 'Perú'),
                Tab(text: 'Brasil'),
                Tab(text: 'México'),
                Tab(text: 'Favoritos'),
              ],
            ),
          ),
          body: const ListviewPlaces(),
        ),
      ),
    );
  }
}
