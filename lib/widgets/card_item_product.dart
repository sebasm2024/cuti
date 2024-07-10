import 'package:flutter/material.dart';
import 'package:myapp/views/create_update_view.dart';
import 'package:myapp/types/product.dart';

class CardItemProduct extends StatelessWidget {
  final String id;
  final String url;
  final String name;
  final double price;
  final int stock;
  final String description;

  const CardItemProduct({
    Key? key,
    required this.id,
    required this.url,
    required this.name,
    required this.price,
    required this.stock,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CreateUpdateView(product: Product(
              id: id,
              name: name,
              price: price,
              stock: stock,
              urlImage: url,
              description: description,
              v: 0,
            )),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Container(
            color: Colors.grey[200],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  url,
                  height: 220,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => const Center(
                    child: Icon(Icons.error),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        '\$ $price',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                      Text(
                        '$stock',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                      Text(
                        description,
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
