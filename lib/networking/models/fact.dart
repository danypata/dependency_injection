import 'package:json_annotation/json_annotation.dart';

part 'fact.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Fact {
  final String fact;
  final int length;

  factory Fact.fromJson(Map<String, dynamic> json) {
    return _$FactFromJson(json);
  }

  Fact(this.fact, this.length);

  Map<String, dynamic> toJson() => _$FactToJson(this);
}
