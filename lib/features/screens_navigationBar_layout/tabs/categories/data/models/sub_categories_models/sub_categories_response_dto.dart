
import 'package:e_commerce_v2/features/network/model/common/meta_data/meta_data.dart';

import 'sub_category_dto.dart';

class SubCategoriesResponseDto {
  int? results;
  Metadata? metadata;
  List<SubCategoryDto>? subCategory;

  SubCategoriesResponseDto({this.results, this.metadata, this.subCategory});

  SubCategoriesResponseDto.fromJson(Map<String, dynamic> json) {
    results = json['results'];
    metadata =
        json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null;
    if (json['data'] != null) {
      subCategory = <SubCategoryDto>[];
      json['data'].forEach((v) {
        subCategory!.add(SubCategoryDto.fromJson(v));
      });
    }
  }
}
