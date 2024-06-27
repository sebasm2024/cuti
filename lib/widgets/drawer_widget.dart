import 'package:flutter/material.dart';
import 'package:myapp/widgets/custom_title_widget.dart';

import '../routes/app_routes.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget( {super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.65,
      height: double.infinity,
      color: const Color.fromARGB(255, 255, 255, 255), 
      child:   Column(
        children: [
          SizedBox(height: 35),
          Text("menu"),

// Suggested code may be subject to a license. Learn more: ~LicenseLog:1865800294.
          CustomTitleWidget(lead: Icons.home_max, label: 'home', end: Icons.arrow_right_alt_outlined, route: AppRoutes.home,),
          CustomTitleWidget(lead: Icons.document_scanner, label: 'list', end: Icons.arrow_right_alt_outlined, route: AppRoutes.productsList,),
          CustomTitleWidget(lead: Icons.find_in_page, label: 'detail', end: Icons.arrow_right_alt_outlined, route: AppRoutes.productDetail,),
          CustomTitleWidget(lead: Icons.add_circle_outline , label: "create", end: Icons.arrow_right, route: AppRoutes.createUpdate,)
       ] )
        
    
    );
    
  }
}