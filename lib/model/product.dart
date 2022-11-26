enum Category {
  all,
  accessories,
  clothing,
  home,
}

class Product{
  const Product({
    required this.id,
    required this.category,
    required this.isFeatured,
    required this.name,
    required this.price,
  });

  final int id;
  final Category category;
  final bool isFeatured;
  final String name;
  final int price;

  String get assetName => '$id-0.jpg';
  String get assetPackage => 'shrine_images';

  @override
  String toString() => "$name (id=$id)";
}