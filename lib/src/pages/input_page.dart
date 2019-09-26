import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

String _nombre="";
String _email="";

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('Inputs de Texto'),
         ),
         body: ListView(
           padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: <Widget>[
            _crearInput(),
            Divider(),
            _crearEmail(),
            Divider(),
            _crearPersona(),
            Divider(),
            _crearPassword(),
            
            
          ], 
         ),
       ),
    );
  }

  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,   
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text("Letras ${_nombre.length}"),
        hintText: "Nombre de la persona",
        labelText: "Nombre",
        helperText: "Solo es el nombre",
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),

      ),  
      onChanged: (valor){
        _nombre=valor;
        setState(() {
          
        });
        print(_nombre);
      },                                    
    );
  }

  _crearPersona() {

    return ListTile(
      title: Text("Nombre es: $_nombre"),
      subtitle: Text('Email: $_email'),
      
    );
    
  }

  Widget _crearEmail() {
    return TextField(
       keyboardType: TextInputType.emailAddress,  
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        
        hintText: "Email",
        labelText: "Email",
        
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),

      ),  
      onChanged: (valor)=>setState((){
        _email=valor;
      }),                                    
    );
  }

 Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: "Password",
        labelText: "Password",
        
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock),

      ),  
      onChanged: (valor)=>setState((){
        
      }),                                    
    );

  }
}