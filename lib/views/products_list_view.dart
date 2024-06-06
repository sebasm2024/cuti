import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final String imageURL;
  final String features;

  Product({
    required this.name,
    required this.description,
    required this.imageURL,
    required this.features,
  });
}

class ProductsListView extends StatelessWidget {
   ProductsListView({Key? key}) : super(key: key);

  final List<Product> products = [
    Product(
      name: 'Producto 1',
      description: 'Descripción del Producto 1',
      imageURL: 'https://via.placeholder.com/150',
      features: 'Características del Producto 1',
    ),
    Product(
      name: 'Producto 2',
      description: 'Descripción del Producto 2',
      imageURL: 'https://via.placeholder.com/150',
      features: 'Características del Producto 2',
    ),
    // Agrega más productos aquí según sea necesario
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Productos'),
      ),
      body: Column(
        children: products.map((product) {
          return Card(
            child: ListTile(
              leading: Image.network(
                product.imageURL,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              title: Text(product.name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.description),
                  Text(product.features),
                ],
              ),
              onTap: () {
                // Aquí puedes agregar la lógica para manejar el tap en un producto
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProductsListView(),
  ));
}
