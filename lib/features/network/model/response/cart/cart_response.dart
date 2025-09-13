import 'cart_dm.dart';
class CartResponse { /// دا اتعمل مش با json serializable لا دا اتعمل ب plugin اسمو json to dart
  CartResponse({
      this.status, 
      this.numOfCartItems, 
      this.cartId, 
      this.cart,});

  CartResponse.fromJson(dynamic json) {
    status = json['status'];
    numOfCartItems = json['numOfCartItems'];
    cartId = json['cartId'];
    cart = json['data'] != null ? CartDM.fromJson(json['data']) : null;
  }
  String? status;
  num? numOfCartItems;
  String? cartId;
  CartDM? cart;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['numOfCartItems'] = numOfCartItems;
    map['cartId'] = cartId;
    if (cart != null) {
      map['data'] = cart?.toJson();
    }
    return map;
  }

}