class Product {
  String productName;
  String productDescription;
  double productPrice;

  Product(
    String name,
    String description,
    double price
  ) {
    this.productName = name;
    this.productDescription = description;
    this.productPrice = price;
  }

  String get name {
    return this.productName;
  }

  String get description {
    return this.productDescription;
  }

  double get price {
    return this.productPrice;
  }
}