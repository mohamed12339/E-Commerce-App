class AddProductRequest {
  late String productId;

  AddProductRequest(this.productId);

  AddProductRequest.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
  }

  Map<String, dynamic> toJson() {
    return {'productId': productId};
  }
}
