import 'package:dict_app/data/dto/licence_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'phonetics_dto.g.dart';

@JsonSerializable(createToJson: false)
class PhoneticsDto {
  @JsonKey(name: "text")
  final String text;
  @JsonKey(name: "audio")
  final String? audio;
  @JsonKey(name: "sourceUrl")
  final String? sourceUrl;
  @JsonKey(name: "licence")
  final LicenceDto? dto;

  PhoneticsDto(
      {required this.audio,
      required this.dto,
      required this.sourceUrl,
      required this.text});

  factory PhoneticsDto.fromJson(Map<String, dynamic> json) =>
      _$PhoneticsDtoFromJson(json);
}
