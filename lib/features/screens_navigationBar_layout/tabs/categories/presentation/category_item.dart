import 'package:flutter/material.dart';
import 'package:e_commerce_v2/core/theme/app_colors.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function onItemClick;

  const CategoryItem(
      this.title,
      this.isSelected,
      this.onItemClick, {
        super.key,
      });

  @override
  Widget build(BuildContext context) {
    // Handle item click by calling onItemClick callback
    return InkWell(
      onTap: () => onItemClick(),
      child: Container(
        // Set background color based on selection
        color: isSelected ? AppColors.white : AppColors.white,
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            //Show/hide the indicator based on selection
            Visibility(
              visible: isSelected,
              child: Container(
                width: 8,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            // wrap the text with expanded to avoid overflow error
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 8,
                ),
                child: Text(
                  title,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: AppColors.blue,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}