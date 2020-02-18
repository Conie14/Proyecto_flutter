import 'package:flutter/material.dart';

class Elimiar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Card(
        
        child: Padding(
          
          padding: EdgeInsets.all(8.0),
          child: Form(
            
           // key: formkey,
            child: Column(

              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Elimina la pelicula que deseas'),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'ID Pelicula:'
                  ),                
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nombre de la Pelicula:'
                  ),                
                ),
                
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Director :'
                  ),                
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        onPressed:(){

                        } ,
                        child: Text('Eliminar pelicula'),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}