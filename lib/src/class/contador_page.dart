import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State <ContadorPage>{

  int _contador = 0;

  TextStyle _estiloText = new TextStyle( fontSize: 25 );

  String whatto = 'Me presionas demasiado men';

  @override
  Widget build(BuildContext context) {


    return Scaffold(  
    
      appBar: AppBar(
        title: Text(_contador < 10 ? "Statfeul example" : "App Made by: Yassett Jose Ynf"),
        centerTitle: true,
      ),
      body: Center(
        child:Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Text( "Numero de toques : ", style: _estiloText ),
            Text('$_contador' , style: _estiloText),
          ],  
        ),

      ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),

    );

  }


  Widget _crearBotones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,

      children: <Widget>[ 
        
        SizedBox( width: 30.0 ),
        
        FloatingActionButton( child: Icon( Icons.exposure_zero ), onPressed: _resetArgs ),
        
        Expanded( child: SizedBox( width: 5.0)),

        FloatingActionButton(  child: Icon( Icons.remove ), onPressed: _cleanArgs ),
        SizedBox( width: 5.0),

        FloatingActionButton( child: Icon( Icons.add ), onPressed: _sumArgs ),

      ],

    ); 
  
  }


  void _sumArgs()=> setState(() =>   _contador++);
  
  void _cleanArgs() => setState(() =>  _contador != 0 ? _contador -- : _contador = 0);
  
  void _resetArgs() => setState(() => _contador = 0);

}