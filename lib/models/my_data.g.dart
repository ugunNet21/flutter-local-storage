// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MyDataAdapter extends TypeAdapter<MyData> {
  @override
  final int typeId = 0;

  @override
  MyData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MyData(
      fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MyData obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
