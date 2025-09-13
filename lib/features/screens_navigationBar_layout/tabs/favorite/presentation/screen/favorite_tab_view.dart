import 'package:flutter/material.dart';


class FavoriteTabView extends StatelessWidget {
  const FavoriteTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Expanded(
        //   child: ListView.separated(
        //     padding: const EdgeInsets.all(16),
        //     itemBuilder: (context, index) {
        //       return WishlistProductWidget(
        //         product: wishlistProducts.products?[index],
        //         colorIndex:
        //             index %
        //             wishlistProducts.products![index].availableColors!.length,
        //       );
        //     },
        //     separatorBuilder: (context, index) => const SizedBox(height: 16),
        //     itemCount: wishlistProducts.count ?? 0,
        //   ),
        // ),
      ],
    );
  }
}
