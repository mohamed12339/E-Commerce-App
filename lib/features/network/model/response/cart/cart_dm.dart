import 'cart_entry_dm.dart';
class CartDM { /// دا اتعمل مش با json serializable لا دا اتعمل ب plugin اسمو json to dart
  CartDM({
      this.id, 
      this.cartOwner, 
      this.cartEntries,
      this.createdAt, 
      this.updatedAt, 
      this.v, 
      this.totalCartPrice,});

  CartDM.fromJson(dynamic json) {
    id = json['_id'];
    cartOwner = json['cartOwner'];
    if (json['products'] != null) {
      cartEntries = [];
      json['products'].forEach((v) {
        cartEntries?.add(CartEntryDM.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    v = json['__v'];
    totalCartPrice = json['totalCartPrice'];
  }
  String? id;
  String? cartOwner;
  List<CartEntryDM>? cartEntries;
  String? createdAt;
  String? updatedAt;
  num? v;
  num? totalCartPrice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['cartOwner'] = cartOwner;
    if (cartEntries != null) {
      map['products'] = cartEntries?.map((v) => v.toJson()).toList();
    }
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['__v'] = v;
    map['totalCartPrice'] = totalCartPrice;
    return map;
  }

}