import 'package:go_router/go_router.dart';
import 'package:myapp/views/create_update_view.dart';
import 'package:myapp/views/home_view.dart';
import 'package:myapp/views/product_detail_view.dart';
import 'package:myapp/views/products_list_view.dart';

class AppRoutes {
  static String home = "/";
  static String createUpdate = "/create-update";
  static String productDetail = "/product-detail";
  static String productsListView = "/product-list-view";
}

final routesConfig = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: AppRoutes.createUpdate,
      builder: (context, state) => const CreateUpdateView(),
    ),
    GoRoute(
      path: AppRoutes.productsListView,
      builder: (context, state) => const ProductsListView(),
    ),
    GoRoute(
      path: AppRoutes.productDetail,
      builder: (context, state) {
        final Map<String, String> params = state.extra as Map<String, String>;
        final imageUrl = params['imageUrl']!;
        final title = params['title']!;
        final price = double.parse(params['price']!);
        return ProductDetailView(
          imageUrl: imageUrl,
          title: title,
          price: price,
        );
      },
    ),
  ],
);
