import 'package:dict_app/data/dto/phonetics_dto.dart';
import 'package:json_annotation/json_annotation.dart';
import './meaning_dto.dart';

part 'dict_dto.g.dart';

@JsonSerializable(createToJson: false)
class DictDto {
  @JsonKey(name: "word")
  final String word;

  @JsonKey(name: "phonetic")
  final String phonetic;

  @JsonKey(name: "phonetics")
  final List<PhoneticsDto> phonetics;

  @JsonKey(name: "sourceUrls")
  final List<String> urls;

  @JsonKey(name: "meanings")
  final List<MeaningDto> meanings;

  DictDto(
      {required this.meanings,
      required this.phonetics,
      required this.urls,
      required this.word,required this.phonetic});

  factory DictDto.fromJson(Map<String, dynamic> json) =>
      _$DictDtoFromJson(json);
}
