import 'package:flutter/material.dart';
import 'package:myapp/widgets/drawer_widget.dart';

// Suggested code may be subject to a license. Learn more: ~LicenseLog:2604290132.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3347687553.
class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key, String? productId});

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
        
      ),
      drawer:const DrawerWidget(),
      body: Column (
 

      
        children: [
         
          // Add the image with a fixed height and expanded width
          Image.network(
            'https://depor.com/resizer/74xRFDUOOSmvFYqNWDXZta_qoLo=/620x0/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/QKI4HBQUOZFZ7MFOKSEDFAJS2I.jpg',
            height: 290,
            width: 290,
            fit: BoxFit.cover,
          ),
          // Rest of the body content
          const Center(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2442098769.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2469057358.
            child: Text('Segunda equipacion de la seleccion de Ecuador', style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),),
             
          ),
                   
                   
ElevatedButton(
  onPressed: () {
    // Acción a realizar cuando se presiona el botón, 
    // por ejemplo, navegar a una pantalla de pago.
    
  },
  child: const Text('Comprar'),
),



        ],
      ),
   

      );
  }

// Suggested code may be subject to a license. Learn more: ~LicenseLog:1528082959.
// Suggested code may be subject to a l
}