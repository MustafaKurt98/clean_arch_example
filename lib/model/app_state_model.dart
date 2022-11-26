import 'package:clean_arch_example/model/product.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:http/http.dart' as http;

double salesTaxRate = 0.06;
double shippingCostPerItem = 7;

class AppStateModel extends foundation.ChangeNotifier{
  List<Product> availableProducts=[];
  Category selectedCategory=Category.all;
  final _productsInCart=<int,int>{};
  

  Category get getSelectedCategory => selectedCategory;
  Map<int,int> get productsInCart => Map.from(_productsInCart);

  int get totalCartQuantity => _productsInCart.values.fold(0, (value, element) => value+element);

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
    var url=Uri.parse('https://127.0.0.1:3000/');
    return http.get(url).then((response) {
      notifyListeners();
    });
  }

}