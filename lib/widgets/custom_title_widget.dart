import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; 
class CustomTitleWidget extends StatelessWidget{
  
  final IconData lead;
  final String label;
  final IconData end;
  final String route;
  const CustomTitleWidget({super.key, required this.lead, required this.label, required this.end, required this.route});
  @override
  Widget build(BuildContext context) {
    return ListTile(
            leading: Icon(lead),
            title: Text(label),
            trailing: Icon(end),
            onTap:()=>context.push(route),
            
    );
  }
 

}