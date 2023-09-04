// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meaning_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeaningDto _$MeaningDtoFromJson(Map<String, dynamic> json) => MeaningDto(
      antonyms:
          (json['antonyms'] as List<dynamic>).map((e) => e as String).toList(),
      definations: (json['definitions'] as List<dynamic>)
          .map((e) => DefinationDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      pos: json['partOfSpeech'] as String,
      synonyms:
          (json['synonyms'] as List<dynamic>).map((e) => e as String).toList(),
    );
