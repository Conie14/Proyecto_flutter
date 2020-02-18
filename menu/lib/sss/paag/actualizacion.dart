import 'package:flutter/material.dart';

class Actualizar extends StatelessWidget{
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
                Text('Actualizar las peliculas'),
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
                    labelText: 'Genero:'
                  ),                
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Duracion:'
                  ),                
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Director :'
                  ),                
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Clasificacion :'
                  ),                
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Descripcion :'
                  ),                
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Año de lazamiento:'
                  ),                
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Calificacion:'
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
                        child: Text('Actualiza esta pelicula'),
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
  /*
   void _submit(){
      if(formkey.currentState.validate()){
        formkey.currentState.save();
        print(_email);
        print(_password);
      }
    }*/
}