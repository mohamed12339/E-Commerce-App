import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_v2/core/utils/app_assets.dart';

import '../../../categories/domain/entities/category.dart';


class CategoryWidget extends StatelessWidget {
  final Category category;
  const CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Implement category tap action
      },
      child: Column(
        spacing: 8,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(1000),
            child: AspectRatio(
              aspectRatio: 1,
              child: CachedNetworkImage(
                imageUrl: category.image ?? AppImages.advertisement1,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            category.name ?? 'Category Name',
            style: Theme.of(context).textTheme.bodySmall,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
