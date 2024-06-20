import 'package:flutter/material.dart';
import 'package:myapp/widgets/custom_tile_widget.dart';

class ProductDetailView extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double price;

  const ProductDetailView({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      title: 'Detalles del Producto',
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              imageUrl,
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Precio: \$${price.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
