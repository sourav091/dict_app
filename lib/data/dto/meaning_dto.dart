import 'package:json_annotation/json_annotation.dart';

import 'defination_dto.dart';

part 'meaning_dto.g.dart';

@JsonSerializable(createToJson: false)
class MeaningDto {
  @JsonKey(name: "partOfSpeech")
  final String pos;

  @JsonKey(name: "definitions")
  final List<DefinationDto> definations;

  @JsonKey(name: "synonyms")
  final List<String> synonyms;

  @JsonKey(name: "antonyms")
  final List<String> antonyms;

  MeaningDto(
      {required this.antonyms,
      required this.definations,
      required this.pos,
      required this.synonyms});

  factory MeaningDto.fromJson(Map<String, dynamic> json) =>
      _$MeaningDtoFromJson(json);
}
