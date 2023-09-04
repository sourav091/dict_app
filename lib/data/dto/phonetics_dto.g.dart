// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phonetics_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhoneticsDto _$PhoneticsDtoFromJson(Map<String, dynamic> json) => PhoneticsDto(
      audio: json['audio'] as String?,
      dto: json['licence'] == null
          ? null
          : LicenceDto.fromJson(json['licence'] as Map<String, dynamic>),
      sourceUrl: json['sourceUrl'] as String?,
      text: json['text'] as String,
    );
