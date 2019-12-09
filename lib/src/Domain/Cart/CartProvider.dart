import 'package:web/src/Domain/Product/Product.dart';

class CartProvider {
  List<Product> productList;

  CartProvider() {
    this.productList = [];
  }

  void add(Product product) {
    this.productList.add(product);
  }

  double get subtotal {
    double total = 0.0;

    this.productList.forEach((product) => total + product.price);

    return total;
  }
}