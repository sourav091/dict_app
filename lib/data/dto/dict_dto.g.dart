// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dict_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictDto _$DictDtoFromJson(Map<String, dynamic> json) => DictDto(
      meanings: (json['meanings'] as List<dynamic>)
          .map((e) => MeaningDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      phonetics: (json['phonetics'] as List<dynamic>)
          .map((e) => PhoneticsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      urls: (json['sourceUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      word: json['word'] as String,
      phonetic: json['phonetic'] as String,
    );
