import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final TextStyle estiloText = new TextStyle( fontSize: 25 );

  int _contador = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(  
    
      appBar: AppBar(
        title: Text("Titulo"),
        centerTitle: true,
      ),
      body: Center(
        child:Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
          
            Text( "Numero de toques : ", style: estiloText ),
            Text("$_contador", style: estiloText),
          
          ],  
        ),

      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        
        onPressed:() => _contador++,
        tooltip: "Sumar los taps",
        child:const Icon(Icons.add),

      ),

    );

  }

}