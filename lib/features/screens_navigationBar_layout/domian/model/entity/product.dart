class Product {
  final String id;
  final String title;
  final String description;
  final num price;
  final num priceAfterDiscount;
  final String imageCover;
  final List<String> images;
  final String categoryId;
  final String brandId;
  final double ratingsAverage;
  final num ratingsQuantity;
  final num quantity;
  final List<String> availableColors;

  Product({
    this.id = "",
    this.title = "",
    this.description = "",
    this.price = 1,
    this.priceAfterDiscount = 0,
    this.imageCover = "",
    this.images = const [""],
    this.categoryId = "",
    this.brandId = "",
    this.ratingsAverage = 1,
    this.ratingsQuantity = 1,
    this.quantity = 1,
    this.availableColors = const [""],
  });
}