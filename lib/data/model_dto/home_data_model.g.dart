// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HomeDataModelAdapter extends TypeAdapter<HomeDataModel> {
  @override
  final int typeId = 0;

  @override
  HomeDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HomeDataModel(
      fields[0] as String,
      fields[1] as String,
      service: (fields[2] as List).cast<ServiceModel>(),
      popularRestaurant: (fields[3] as List).cast<PopularRestaurantModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, HomeDataModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.address)
      ..writeByte(2)
      ..write(obj.service)
      ..writeByte(3)
      ..write(obj.popularRestaurant);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ServiceModelAdapter extends TypeAdapter<ServiceModel> {
  @override
  final int typeId = 1;

  @override
  ServiceModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ServiceModel(
      title: fields[0] as String,
      discount: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ServiceModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.discount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServiceModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PopularRestaurantModelAdapter
    extends TypeAdapter<PopularRestaurantModel> {
  @override
  final int typeId = 2;

  @override
  PopularRestaurantModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PopularRestaurantModel(
      title: fields[0] as String,
      time: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PopularRestaurantModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.time);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PopularRestaurantModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
