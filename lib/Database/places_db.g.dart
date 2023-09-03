// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_db.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlacesAdapter extends TypeAdapter<Places> {
  @override
  final int typeId = 1;

  @override
  Places read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Places(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as int,
      fields[4] as String,
      fields[5] as double,
      fields[6] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Places obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.urlImage)
      ..writeByte(3)
      ..write(obj.codCountry)
      ..writeByte(4)
      ..write(obj.nameCountry)
      ..writeByte(5)
      ..write(obj.raiting)
      ..writeByte(6)
      ..write(obj.isFavorite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlacesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
