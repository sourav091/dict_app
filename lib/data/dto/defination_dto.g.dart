// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'defination_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DefinationDto _$DefinationDtoFromJson(Map<String, dynamic> json) =>
    DefinationDto(
      antonyms:
          (json['antonyms'] as List<dynamic>).map((e) => e as String).toList(),
      defination: json['defination'] as String?,
      synonyms:
          (json['synonyms'] as List<dynamic>).map((e) => e as String).toList(),
    );
