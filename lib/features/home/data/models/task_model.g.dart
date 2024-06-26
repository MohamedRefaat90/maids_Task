// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskModelAdapter extends TypeAdapter<TaskModel> {
  @override
  final int typeId = 0;

  @override
  TaskModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TaskModel(
      title: fields[0] as String,
      note: fields[1] as String?,
      image: fields[2] as String?,
      record: fields[3] as String?,
      color: fields[4] as int?,
      date: fields[5] as String,
      docs: (fields[6] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, TaskModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.note)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.record)
      ..writeByte(4)
      ..write(obj.color)
      ..writeByte(5)
      ..write(obj.date)
      ..writeByte(6)
      ..write(obj.docs);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
