import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:myapp/routes/app_routes.dart';


 
void main() { HttpOverrides.global = MyHttpOverrides();
  runApp(const ProviderScope(child:  MyApp()));
}
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3241855549.
      title: 'Material app',
      routerConfig:routesConfig,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
      ),
      )
    );
  }
}
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
          }
          
  }