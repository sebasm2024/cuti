import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/Providers/product_provider.dart';
import 'package:myapp/types/product.dart';
import 'package:myapp/widgets/drawer_widget.dart';

class CreateUpdateView extends ConsumerStatefulWidget {
  const CreateUpdateView({super.key});

  @override
  ConsumerState<CreateUpdateView> createState() => _CreateUpdateViewState();
}

class _CreateUpdateViewState extends ConsumerState<CreateUpdateView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _stockController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _urlImageController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  Future<void> _createProduct() async {
    if (_formKey.currentState!.validate()) {
      try {
        final String name = _nameController.text;
        final int stock = _stockController.text.isNotEmpty ? int.parse(_stockController.text) : 0;
        final double price = double.parse(_priceController.text);
        final String urlImage = _urlImageController.text;
        final String description = _descriptionController.text;

        final product = Product(
          id: '',
          name: name,
          stock: stock,
          price: price,
          urlImage: urlImage,
          description: description,
          v: 0,
        );

        final createProduct = ref.read(createProductProvider);
        await createProduct(product);

        Navigator.of(context).pop();
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Failed to create product: $e'),
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('Create/Update'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _stockController,
                decoration: const InputDecoration(labelText: 'Stock'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a stock value';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _priceController,
                decoration: const InputDecoration(labelText: 'Price'),
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a price';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _urlImageController,
                decoration: const InputDecoration(labelText: 'URL Image'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a URL';
                  }
                  final uri = Uri.tryParse(value);
                  if (uri == null || !uri.hasAbsolutePath) {
                    return 'Please enter a valid URL';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
                maxLines: 3,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: _createProduct,
                child: const Text('Guardar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
