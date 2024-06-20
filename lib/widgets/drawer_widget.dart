import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/routes/app_routes.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menú',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              context.go(AppRoutes.home);
            },
          ),
          ListTile(
            title: Text('List'),
            onTap: () {
              context.go(AppRoutes.productsListView);
            },
          ),
          ListTile(
            title: Text('Real'),
            onTap: () {
              context.go(AppRoutes.productDetail);
            },
          ),
          ListTile(
            title: Text('Create'),
            onTap: () {
              context.go(AppRoutes.createUpdate);
            },
          ),
        ],
      ),
    );
  }
}
