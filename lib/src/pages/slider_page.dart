import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {


  double _valorSlider=100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          
          children: <Widget>[
            _crearSlider(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {

    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamano de la imagen',
      onChanged: (valor){
        setState(() {
         _valorSlider=valor; 
        });
        
      },
      value: _valorSlider,
      min: 10.0,
      max: 400.0,

    );
  }

  Widget _crearImagen() {

    return Image(
      image: NetworkImage('https://es.calcuworld.com/wp-content/uploads/sites/2/2018/04/cuanto-mide-el-universo-entero.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}