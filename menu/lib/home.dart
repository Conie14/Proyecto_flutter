import 'package:flutter/material.dart';
import 'package:menu/sss/paag/catalogo.dart';
import 'package:menu/sss/paag/cuenta.dart';
import 'package:menu/sss/paag/consulta.dart';
import 'package:menu/sss/paag/agregarpeli.dart';
import 'package:menu/sss/paag/actualizacion.dart';
import 'package:menu/sss/paag/eliminar.dart';

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectDrawerItem = 0;
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Catalogo();
      case 1:
        return Cuenta();
      case 2:
        return Consulta();
      case 3:
        return Agregar();
      case 4:
        return Actualizar();
      case 5:
        return Elimiar();
    }
  }

  _onselectitem(int pos) {
    Navigator.of(context).pop();
    setState(() {
      _selectDrawerItem = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CINEMA PLAY'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Sin registro'),
              accountEmail: Text('Sin registro'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.deepPurpleAccent,
                child: Text(
                  'Erika',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            ListTile(
              title: Text('Catalogos'),
              leading: Icon(Icons.blur_on),
              selected: (0 == _selectDrawerItem),
              onTap: () {
                _onselectitem(0);
              },
            ),
            ListTile(
              title: Text('Cuenta'),
              leading: Icon(Icons.account_box),
              selected: (1 == _selectDrawerItem),
              onTap: () {
                _onselectitem(1);
              },
            ),
            ListTile(
              title: Text('Consulta'),
              leading: Icon(Icons.view_module),
              selected: (2 == _selectDrawerItem),
              onTap: () {
                _onselectitem(2);
              },
            ),
            Divider(),
            Divider(),
            ListTile(
              title: Text('Agregar peliculas'),
              leading: Icon(Icons.add_circle_outline),
              selected: (3 == _selectDrawerItem),
              onTap: () {
                _onselectitem(3);
              },
            ),
            ListTile(
              title: Text('Actualizacion'),
              leading: Icon(Icons.update),
              selected: (4 == _selectDrawerItem),
              onTap: () {
                _onselectitem(4);
              },
            ),
            ListTile(
              title: Text('Elimiar'),
              leading: Icon(Icons.delete_forever),
              selected: (5 == _selectDrawerItem),
              onTap: () {
                _onselectitem(5);
              },
            ),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );
  }
}
