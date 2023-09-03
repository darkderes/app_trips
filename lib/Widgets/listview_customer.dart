import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/places_providers.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../Screens/details_places.dart';

class ListviewPlaces extends StatelessWidget {
  const ListviewPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placesList =
        Provider.of<PlaceProvider>(context, listen: true).placesList;

    return ListView.builder(
        itemCount: placesList.length,
        itemBuilder: (context, index) {
          final place = placesList[index];
          return Card(
            child: InkWell(
              onTap: () async {
                // print("Presionado $place.name")}");
                // Navega a la pantalla de detalles
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPlaces(
                      places: place,
                    ),
                  ),
                );
              },
              child: Hero(
                tag: place.key ?? 0,
                child: Stack(
                  children: [
                    // Imagen cargada desde Internet
                    CachedNetworkImage(
                      imageUrl:
                          place.urlImage, // Reemplaza con la URL de la imagen
                      fit: BoxFit
                          .cover, // Ajusta la imagen al tamaño del contenedor
                      height: 200, // Altura deseada de la imagen
                      width: double.infinity, // Ancho máximo
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(), // Widget de carga
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error), // Widget en caso de error
                    ),
                    // Estrella de calificación en la esquina inferior izquierda
                    Positioned(
                      bottom: 8,
                      left: 8,
                      child: RatingBar(
                        initialRating: place.raiting,
                        minRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20,
                        ratingWidget: RatingWidget(
                          full: const Icon(Icons.star,
                              color: Color.fromARGB(255, 240, 240, 8)),
                          half: const Icon(Icons.star_half,
                              color: Color.fromARGB(255, 245, 245, 245)),
                          empty: const Icon(Icons.star_border,
                              color: Color.fromARGB(255, 232, 233, 235)),
                        ),
                        onRatingUpdate: (rating) {
                          // Actualiza la calificación si es necesario
                          final placesProvider = Provider.of<PlaceProvider>(
                              context,
                              listen: false);
                          placesProvider.updateRaiting(place.key ?? 0, rating);
                        },
                      ),
                    ),
                    // Contenedor para el texto con fondo semitransparente
                    Container(
                      color: Colors.black
                          .withOpacity(0.5), // Fondo semitransparente
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Fila para el título y el ícono de corazón
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Título
                              Text(
                                place.name,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white, // Color del texto
                                ),
                              ),
                              // Ícono de corazón para marcar como favorito en la parte superior derecha
                              GestureDetector(
                                onTap: () {
                                  final placesProvider =
                                      Provider.of<PlaceProvider>(context,
                                          listen: false);
                                  placesProvider.updateFavorite(
                                      place.key.toString(), !place.isFavorite);
                                },
                                child: Icon(
                                  Icons.favorite,
                                  color: place.isFavorite
                                      ? Colors.red
                                      : Colors.white,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ), // Espacio entre el título y otros elementos
                          Text(
                            place.nameCountry.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white, // Color del texto
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
