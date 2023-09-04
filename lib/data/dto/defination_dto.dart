import 'package:json_annotation/json_annotation.dart';

part 'defination_dto.g.dart';

@JsonSerializable(createToJson: false)
class DefinationDto {
  @JsonKey(name: "defination")
  final String? defination;

  @JsonKey(name: "synonyms")
  final List<String> synonyms;

  @JsonKey(name: "antonyms")
  final List<String> antonyms;

  DefinationDto(
      {required this.antonyms,
      required this.defination,
      required this.synonyms});

  factory DefinationDto.fromJson(Map<String, dynamic> json) =>
      _$DefinationDtoFromJson(json);
}
