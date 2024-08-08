import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/Providers/product_provider.dart';
import 'package:myapp/types/product.dart';

import '../providers/product_provider.dart';
import '../widgets/card_item_product.dart';
import '../widgets/drawer_widget.dart';

class ProductsListView extends ConsumerWidget {
  const ProductsListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productProv = ref.watch(productsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Productos"),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: productProv.when(
            data: (List<Product> lp) {
              return lp.map((product) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CardItemProduct(
                        id: product.id,
                        url: product.urlImage,
                        name: product.name,
                        price: product.price,
                        stock: product.stock,
                        description: product.description,
                      ),
                    ),
                  ),
                );
              }).toList();
            },
            error: (obj, err) => [
              const Icon(Icons.error, color: Colors.red, size: 50),
              const SizedBox(height: 10),
              Text(
                'Error: $err',
                style: TextStyle(fontSize: 16, color: Colors.red),
              ),
              const SizedBox(height: 10),
              Text(
                'Details: $obj',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
            loading: () => [
              const Center(
                child: CircularProgressIndicator(
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
