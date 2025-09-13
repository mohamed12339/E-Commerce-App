// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryDM _$CategoryDMFromJson(Map<String, dynamic> json) => CategoryDM(
  id: json['_id'] as String?,
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  image: json['image'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  category: json['category'] as String?,
);

Map<String, dynamic> _$CategoryDMToJson(CategoryDM instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.image,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'category': instance.category,
    };
