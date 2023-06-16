import 'package:flutter/material.dart'; //import material dart file for materila app
import 'package:plant_ui/plant_ui.dart'; //import Another dart file
import 'package:responsive_sizer/responsive_sizer.dart'; //import of ResponsiveSizer


void main() {
  runApp(const MyApp());
}

//Crrate a class of Same Name

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, type){
      return MaterialApp(
        debugShowCheckedModeBanner: false, // Hide the Debugg Badge
        title: 'PLANT UI',//Title of App
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,        
          ),
          home: const PlantUI(), //Constructor of Class plant_ui.dart i.e PlantUI()
      );
      
    }
    
    );
  }
}