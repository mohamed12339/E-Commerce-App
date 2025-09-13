// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDM _$ProductDMFromJson(Map<String, dynamic> json) => ProductDM(
  id: json['_id'] as String,
  sold: (json['sold'] as num?)?.toInt(),
  images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
  subcategory: (json['subcategory'] as List<dynamic>?)
      ?.map((e) => CategoryDM.fromJson(e as Map<String, dynamic>))
      .toList(),
  ratingsQuantity: (json['ratingsQuantity'] as num?)?.toInt(),
  title: json['title'] as String?,
  slug: json['slug'] as String?,
  description: json['description'] as String?,
  quantity: (json['quantity'] as num?)?.toInt(),
  price: (json['price'] as num?)?.toDouble(),
  priceAfterDiscount: (json['priceAfterDiscount'] as num?)?.toDouble(),
  imageCover: json['imageCover'] as String?,
  category: json['category'] == null
      ? null
      : CategoryDM.fromJson(json['category'] as Map<String, dynamic>),
  brand: json['brand'] == null
      ? null
      : CategoryDM.fromJson(json['brand'] as Map<String, dynamic>),
  ratingsAverage: (json['ratingsAverage'] as num?)?.toDouble(),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  availableColors: (json['availableColors'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$ProductDMToJson(ProductDM instance) => <String, dynamic>{
  '_id': instance.id,
  'sold': instance.sold,
  'images': instance.images,
  'subcategory': instance.subcategory,
  'ratingsQuantity': instance.ratingsQuantity,
  'title': instance.title,
  'slug': instance.slug,
  'description': instance.description,
  'quantity': instance.quantity,
  'price': instance.price,
  'priceAfterDiscount': instance.priceAfterDiscount,
  'imageCover': instance.imageCover,
  'category': instance.category,
  'brand': instance.brand,
  'ratingsAverage': instance.ratingsAverage,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'availableColors': instance.availableColors,
};
