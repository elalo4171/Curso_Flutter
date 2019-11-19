import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),

      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        children: <Widget>[
          _cardTipo1(),  //Es un widget que se hizo abajo para que no hubiera tanto codigo junto
          SizedBox(height: 30.0,),  
          _cardTipo2(),           
                    ],
                  ),
                );
              }
                    
            Widget _cardTipo1() {
              return Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.0) ),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.photo_album, color: Colors.blue,),
                      title: Text('Soy el titulo de esta tarjeta'),
                      subtitle: Text("Aqui estamos con la descripcion para que ustdesd vean lo que quiero que vema XD"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          child: Text("Cancelar"),
                          onPressed: (){},
          
                        ),
                        FlatButton(
                          child: Text("ok"),
                          onPressed: (){},
                          
                        )
                      ],
                    )
                  ],
                ),
              );
            }
          
           Widget _cardTipo2() {

             final card= Container(
               
               child: Column(
                 children: <Widget>[
                   FadeInImage(
                     image: NetworkImage('https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
                      placeholder: AssetImage('assets/jar-loading.gif'), //Esta imagen se muestra mientras carga la network
                      fadeInDuration: Duration( milliseconds: 200 ),
                      height: 300.0,
                      fit: BoxFit.cover,
                   ),
                  //  Image(
                  //    image: NetworkImage("https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
                  //  ),
                   
                   Container(
                     padding: EdgeInsets.all(10.0),
                     child: Text("No tengo idea de que poner")),
                 ],
               ),

             );
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                 // color: Colors.red
                 boxShadow: <BoxShadow>[
                   BoxShadow(
                     color: Colors.black26,
                     blurRadius: 10.0,
                     spreadRadius: 2.0,
                     offset: Offset(2.0,10.0)
                   )
                 ]
                ),
                child: ClipRRect(
                
                  borderRadius: BorderRadius.circular(30.0),
                 child: card,),
              );

            }
}