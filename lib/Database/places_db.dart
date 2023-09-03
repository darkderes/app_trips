import 'package:hive_flutter/hive_flutter.dart';
part 'places_db.g.dart';

@HiveType(typeId: 1)
class Places extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String description;
  @HiveField(2)
  String urlImage;
  @HiveField(3)
  int codCountry;
  @HiveField(4)
  String nameCountry;
  @HiveField(5)
  double raiting;
  @HiveField(6)
  bool isFavorite;

  Places(
    this.name,
    this.description,
    this.urlImage,
    this.codCountry,
    this.nameCountry,
    this.raiting,
    this.isFavorite,
  );
}
