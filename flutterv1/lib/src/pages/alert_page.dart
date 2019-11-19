import 'package:flutter/material.dart';


  class AlertPage extends StatelessWidget {
    const AlertPage({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),

      body: Center(
        child: RaisedButton(
          child: Text('Mostar Alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: ()=> _mostrarAlert(context)),
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.all_out),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      
      );
  }

  void _mostrarAlert(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: false, //Hace que se cierre la alerta cuando presionas afuera
      builder: (context){
        
        return AlertDialog(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text("Titulo"),
          content:Column(
            mainAxisSize: MainAxisSize.min,//Tamano de la columna
            children: <Widget>[
              Text('Este es el contenido de la caja de la alerta'),
              FlutterLogo( size: 100.0, )
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: ()=>Navigator.of(context).pop(),
            ),FlatButton(
              child: Text('Ok'),
              onPressed:  ()=>Navigator.of(context).pop(),
            ),

          ],
        );
      }
    );
  }

}