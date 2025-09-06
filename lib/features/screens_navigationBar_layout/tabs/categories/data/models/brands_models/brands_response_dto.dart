import 'package:e_commerce_v2/features/network/model/common/meta_data/meta_data.dart';

import 'brand_dto.dart';


class BrandsResponseDto {
  int? results;
  Metadata? metadata;
  List<BrandDto>? brandDto;

  BrandsResponseDto({this.results, this.metadata, this.brandDto});

  BrandsResponseDto.fromJson(Map<String, dynamic> json) {
    results = json['results'];
    metadata =
        json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null;
    if (json['data'] != null) {
      brandDto = <BrandDto>[];
      json['data'].forEach((v) {
        brandDto!.add(BrandDto.fromJson(v));
      });
    }
  }
}
