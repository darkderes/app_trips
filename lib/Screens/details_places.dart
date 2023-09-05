import 'package:flutter/material.dart';
import '../Database/places_db.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailsPlaces extends StatelessWidget {
  const DetailsPlaces({Key? key, required this.places}) : super(key: key);

  final Places places;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(places.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Hero(
            tag: places.key ?? 0,
            child: Container(
              height:
                  200, // Altura deseada de la imagen , no se ocupo cacheimage por un tema academico.
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(places.urlImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    places.nameCountry,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              places.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              places.description,
              style: const TextStyle(
                fontSize: 16,
                height: 2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Rating: ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RatingBar.builder(
                  initialRating: places.raiting,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 20,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber, // Color de las estrellas
                  ),
                  onRatingUpdate: (value) => print(value),
                  ignoreGestures: true, // Desactiva la interacción del usuario
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
