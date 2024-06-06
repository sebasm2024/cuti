import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mercado de pases'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'https://muydefutbol.com/wp-content/uploads/2024/05/1zroEiuJE_2000x1500__1.jpg', // ruta de la imagen en tu proyecto
                width: 200, // ajusta el tamaño de la imagen según lo necesites
                height: 200,
              ),
              SizedBox(height: 20), // espacio entre la imagen y el párrafo
              Text(
                'Mbappé, nuevo jugador del Real Madrid',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
