

import 'package:e_commerce_v2/features/cart/domain/entities/cart_entry.dart';

class Cart{ /// ودا طبعا الحاجات الي هاستخدمها
  num totalPrice;
  ///Key -> Product id
  Map<String, CartEntry> entries; /// انا عملت دية كدا عشان انا عملت forloops عليها كتير اوي لان انا لما ادخل الاسكرين دية لازم اعرف ال product دا موجود ولا لا لكن انا لما احطها في map علي هاجيبوا ب ال key وال cartEntry الي هوا product id
  int totalNumberOfItems;

  Cart({required this.entries,
    required this.totalPrice, required this.totalNumberOfItems});


  bool isProductInCart(String productId) => entries[productId] != null;

  int? getProductQuantity(String productId) => entries[productId]?.quantity;
}