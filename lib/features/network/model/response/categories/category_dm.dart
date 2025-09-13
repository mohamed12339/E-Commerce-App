import 'package:json_annotation/json_annotation.dart';

part 'category_dm.g.dart'; /// دا هيتعمل لوحدوا عن طريق   build_runner

@JsonSerializable() /// دا هيتعمل لوحدوا عن طريق   build_runner
class CategoryDM { /// Use for category - subcategory - brands
  @JsonKey(name: '_id')
  final String? id;
  final String? name;
  final String? slug;
  final String? image;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? category;

  CategoryDM({
    required this.id,
    required this.name,
    required this.slug,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
    required this.category,
  });

  factory CategoryDM.fromJson(Map<String, dynamic> json) =>
      _$CategoryDMFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryDMToJson(this);
}