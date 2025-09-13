class UpdateProductQuantityRequest {
  late String count;

  UpdateProductQuantityRequest(this.count);


  UpdateProductQuantityRequest.fromJson(Map<String, dynamic> json) {
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {'count': count};
  }
}
