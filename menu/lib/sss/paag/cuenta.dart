import 'package:flutter/material.dart';

class Cuenta extends StatelessWidget {
  final formkey = GlobalKey<FormState>();
  String _email, _password;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Card(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Inicia sesion aquí! =)'),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Correo electronico:'),
                  validator: (input) =>
                      !input.contains('@') ? 'El correo no es valido! ' : null,
                  onSaved: (input) => _email = input,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Password :'),
                  validator: (input) =>
                      input.length < 8 ? 'Tu necesitas 8 caracteres' : null,
                  onSaved: (input) => _password = input,
                  obscureText: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        onPressed: _submit,
                        child: Text('Iniciar sesion'),
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

  void _submit() {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();
      print(_email);
      print(_password);
    }
  }
}
