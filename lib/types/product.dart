class Product {
  final String id;
  final String name;
  final double price;
  final int stock;
  final String urlImage;
  final String description;
  final int v;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.stock,
    required this.urlImage,
    required this.description,
    required this.v,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['_id'],
      name: json['name'],
      price: json['price'],
      stock: json['stock'],
      urlImage: json['urlImage'],
      description: json['description'],
      v: json['__v'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'stock': stock,
      'urlImage': urlImage,
      'description': description,
    };
  }
}