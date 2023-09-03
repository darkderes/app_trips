import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../Database/places_db.dart';

class PlaceProvider extends ChangeNotifier {
  List<Places> placesList = [];
  PlaceProvider() {
    _getPlacesByCountry(0).then((value) {
      placesList = value;
      notifyListeners();
    });
  }
  void _setCountry(int codCountry) {
    _getPlacesByCountry(codCountry).then((value) {
      placesList = value;
      notifyListeners();
    });
  }

  void getPlacesList(int index) {
    if (index == 4) {
      getPlacesFavorite().then((value) {
        placesList = value;
        notifyListeners();
      });
    } else {
      _setCountry(index);
    }
  }

  Future<List<Places>> _getPlacesByCountry(int codCountry) async {
    final placesBox = Hive.box<Places>('Places');
    final placesList = placesBox.values
        .where((place) => place.codCountry == codCountry)
        .toList();
    return placesList;
  }

  Future<List<Places>> getPlacesFavorite() async {
    final placesBox = Hive.box<Places>('Places');
    final placesList =
        placesBox.values.where((place) => place.isFavorite).toList();
    return placesList;
  }

  // actualizar el valor de isFavorite por key
  void updateFavorite(String key, bool favorite) {
    final placesBox = Hive.box<Places>('Places');
    final place = placesBox.get(int.parse(key));
    place!.isFavorite = favorite;
    place.save();
    notifyListeners();
  }

  // actualizar el valor de raiting por key
  void updateRaiting(int key, double raiting) {
    final placesBox = Hive.box<Places>('Places');
    final place = placesBox.get(key);
    place!.raiting = raiting;
    place.save();
    // notifyListeners();
  }
}
