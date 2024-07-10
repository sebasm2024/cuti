import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/types/product.dart';
import 'package:myapp/widgets/card_item_product.dart';
import '../Providers/product_provider.dart';
import '../widgets/drawer_widget.dart';
import 'create_update_view.dart';

class ProductsList extends ConsumerWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productProv = ref.watch(productsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products List'),
      ),
      drawer: const DrawerWidget(),
      body: productProv.when(
        data: (List<Product> products) {
          return SingleChildScrollView(
            child: Column(
              children: products.map((product) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateUpdateView(product: product),
                      ),
                    );
                  },
                  child: CardItemProduct(
                    id: product.id,
                    url: product.urlImage,
                    name: product.name,
                    price: product.price,
                    stock: product.stock,
                    description: product.description,
                  ),
                );
              }).toList(),
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
