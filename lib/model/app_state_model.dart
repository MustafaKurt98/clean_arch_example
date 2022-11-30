import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:http/http.dart' as http;

import 'package:clean_arch_example/model/product.dart';

double salesTaxRate = 0.06;
double shippingCostPerItem = 7;

class AppStateModel extends foundation.ChangeNotifier {
  List<Product> availableProducts = [];
  Category selectedCategory = Category.all;
  final _productsInCart = <int, int>{};
  final CarouselController controller = CarouselController();
  int current = 0;

  Category get getSelectedCategory => selectedCategory;
  Map<int, int> get productsInCart => Map.from(_productsInCart);

  int get totalCartQuantity =>
      _productsInCart.values.fold(0, (value, element) => value + element);

  List<Product> getProducts() {
    if (selectedCategory == Category.all) {
      return List.from(availableProducts);
    } else {
      return availableProducts.where((p) {
        return p.category == selectedCategory;
      }).toList();
    }
  }

  loadProducts() {
    var url = Uri.parse('https://127.0.0.1:3000/');
    return http.get(url).then((response) {
      notifyListeners();
    });
  }

  List<String> carouselTrainingPhotos = [
    "https://picsum.photos/id/237/200/300",
    "https://picsum.photos/id/238/200/300",
    "https://picsum.photos/id/239/200/300",
    "https://picsum.photos/id/240/200/300",
    "https://picsum.photos/id/241/200/300",
    "https://picsum.photos/id/242/200/300",
    "https://picsum.photos/id/243/200/300",
    "https://picsum.photos/id/244/200/300",
  ];

  changeIndicator(int index) {
    current = index;
    notifyListeners();
  }
}
