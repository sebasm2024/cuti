import 'package:flutter/material.dart';
import 'package:myapp/widgets/drawer_widget.dart';

// Suggested code may be subject to a license. Learn more: ~LicenseLog:475906733.
class HomeView extends StatelessWidget {
  const HomeView({super.key });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        
      ),
      drawer:const DrawerWidget(),
      body: Center (
 

      
        child:Column(
        children: [
          
          // Add the image with a fixed height and expanded width
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
          child: Image.network(
            '',
            height: 200,
            width: 290,
            fit: BoxFit.cover,
          ),
          )
          ,
          // Rest of the body content
          const Center(

            child: Text('Ay mi madre el bicho'),
            
          ),
          const Spacer(),
          const Text ('cristiano ronaldo 2024 4k ' ,
          textAlign:TextAlign.center 
          ,
          style: TextStyle(
            fontSize: 28,
            color: Colors.black,
          ))
        ],
      ),
   

      )
      );
  }



} 