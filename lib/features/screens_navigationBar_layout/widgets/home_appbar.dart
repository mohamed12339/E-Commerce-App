import 'package:flutter/material.dart';

import 'package:e_commerce_v2/core/utils/app_assets.dart';
import 'package:e_commerce_v2/core/widgets/search_and_cart_widget.dart';

import '../../../core/theme/app_colors.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  final int tabIndex;
  const HomeAppbar({super.key, required this.tabIndex});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false, // عشان ما يضيفش سهم back
      leadingWidth: 180,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0), // تحكم في المسافة من الشمال
        child: Image.asset(
          AppImages.logo,
          color: AppColors.blue,
          height: 40,
        ),
      ),
      centerTitle: false,
      bottom: tabIndex == 3
          ? PreferredSize(
        preferredSize: preferredSize,
        child: const SizedBox(),
      )
          : PreferredSize(
        preferredSize: preferredSize,
        child: const SearchAndCartWidget(),
      ),
    );
  }

  @override
  Size get preferredSize =>
      tabIndex == 3 ? const Size.fromHeight(56) : const Size.fromHeight(96);
}
