// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_question_list_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GetQuestionListModelImplAdapter
    extends TypeAdapter<_$GetQuestionListModelImpl> {
  @override
  final int typeId = 0;

  @override
  _$GetQuestionListModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$GetQuestionListModelImpl(
      title: fields[0] as String,
      link: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$GetQuestionListModelImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.link);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GetQuestionListModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetQuestionListModelImpl _$$GetQuestionListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetQuestionListModelImpl(
      title: json['title'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$GetQuestionListModelImplToJson(
        _$GetQuestionListModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
    };
