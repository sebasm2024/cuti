import 'package:go_router/go_router.dart';
import 'package:myapp/views/create_update_view.dart';
import 'package:myapp/views/home_view.dart';
import 'package:myapp/views/products_list_view.dart';
import '../views/product_detail_view.dart';

class AppRoutes {
  static const String home = "/";
  static const String createUpdate = "/create-update";
  static const String productDetail = "/product-detail";
  static const String productsList = "/products-list";
}

final GoRouter routesConfig = GoRouter(
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
      path: '${AppRoutes.productDetail}/:productId',
      builder: (context, state) {
        final productId = state.pathParameters['productId']!;
        return ProductDetail(productId: productId);
      },
    ),
    GoRoute(
      path: AppRoutes.productsList,
      builder: (context, state) => const ProductsList(),
    ),
  ],
);
