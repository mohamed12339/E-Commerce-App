import 'package:e_commerce_v2/core/theme/app_colors.dart';
import 'package:flutter/material.dart';


class ProductQuantityController extends StatelessWidget {
  final int quantity;
  final Function(int) onChanged;

  const ProductQuantityController({
    super.key,
    required this.quantity,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: AppColors.darkBlue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              onChanged(quantity - 1);
            },
            icon: const Icon(Icons.remove, color: AppColors.white, size: 18,),
          ),
          Text(quantity.toString(), style: TextStyle(color: AppColors.white, fontSize: 14 )),
          IconButton(
            onPressed: () {
              onChanged(quantity + 1);
            },
            icon: const Icon(Icons.add, color: AppColors.white, size: 18,),
          ),
        ],
      ),
    );
  }
}
