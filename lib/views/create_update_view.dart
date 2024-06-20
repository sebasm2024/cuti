import 'package:flutter/material.dart';
import 'package:myapp/widgets/custom_tile_widget.dart';

class CreateUpdateView extends StatelessWidget {
  const CreateUpdateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      title: 'Create or Update',
      child: Center(
        child: Text('Create or Update View'),
      ),
    );
  }
}
