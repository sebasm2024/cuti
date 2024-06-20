import 'package:flutter/material.dart';
import 'package:myapp/widgets/drawer_widget.dart';

class BaseView extends StatelessWidget {
  final String title;
  final Widget child;

  const BaseView({required this.title, required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: AppDrawer(),
      body: child,
    );
  }
}
