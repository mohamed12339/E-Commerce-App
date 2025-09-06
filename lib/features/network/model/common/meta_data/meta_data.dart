// Metadata class
import 'package:json_annotation/json_annotation.dart';

part 'meta_data.g.dart'; /// دا هيتعمل لوحدوا عن طريق   build_runner

@JsonSerializable() /// دا هيتعمل لوحدوا عن طريق   build_runner
class Metadata {
  final int? currentPage;
  final int? numberOfPages;
  final int? limit;
  final int? nextPage;


  Metadata({
    required this.currentPage,
    required this.numberOfPages,
    required this.limit,
    required this.nextPage
  });

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
  Map<String, dynamic> toJson() => _$MetadataToJson(this);
}