import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {

  final opciones= ['uno', 'dos', 'tres', 'cuatro', 'cinco'];  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temp"),
        
      ),
      body: ListView(
        children: _crearItemsCortos()

      ),
    );
  }

  List<Widget> _crearItems(){

    List<Widget> lista = new List<Widget>();
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)
            ..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCortos(){

    return opciones.map(( item ){ 

      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + "!"),
            subtitle: Text("Cualquier cosa"),
            leading: Icon(Icons.accessible_forward),
            trailing: Icon(Icons.arrow_downward),
            onTap: (){},
          ),
          Divider(),
        ],
      );
    }).toList();
  }

}