import 'package:flutter/material.dart';
import 'package:myapp/widgets/custom_tile_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/routes/app_routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = 'https://images.ecestaticos.com/XPG6OVzV-pdhOGl1ZWxJ0RU5Q5M=/0x0:2272x1508/1200x900/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2Ff4c%2F68e%2Fa6d%2Ff4c68ea6d9f45788adcb8f8e5649822d.jpg';
    final title = 'Cristiano, nuevo jugador del Real Madrid';
    final price = 120.0; // Ejemplo de precio

    return BaseView(
      title: 'Mercado de pases',
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                context.go(
                  AppRoutes.productDetail,
                  extra: {
                    'imageUrl': imageUrl,
                    'title': title,
                    'price': price.toString(),
                  },
                );
              },
              child: Image.network(
                imageUrl,
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
