import 'package:json_annotation/json_annotation.dart';

part 'licence_dto.g.dart';

@JsonSerializable(createToJson: false)
class LicenceDto {
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "url")
  final String url;

  LicenceDto({required this.name, required this.url});

  factory LicenceDto.fromJson(Map<String, dynamic> json) => _$LicenceDtoFromJson(json);
}
