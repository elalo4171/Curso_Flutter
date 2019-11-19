import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {


  double _valorSlider=300.0;
  bool _bloquarCheck= false;
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
            _crearCheckBox(),
            _crearSwitch(),
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
      onChanged: (_bloquarCheck) ? null :
      (valor){
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

    return FadeInImage(
      image: NetworkImage('https://es.calcuworld.com/wp-content/uploads/sites/2/2018/04/cuanto-mide-el-universo-entero.jpg'),
      width: _valorSlider,
      placeholder: AssetImage('assets/jar-loading.gif'),
      fit: BoxFit.contain,
    );
  }


  Widget _crearCheckBox(){
    // return Checkbox(
    //   value: _bloquarCheck,
    //   onChanged: (valor){
    //    setState(() {
    //      _bloquarCheck=valor; 
    //    });
    //   },
    // );

    return CheckboxListTile(
      value: _bloquarCheck,
      onChanged: (valor){
      setState(() {
       _bloquarCheck=valor; 
      });
      },
      title: Text('Bloquiar slider: '),
      );
      
  }


  Widget _crearSwitch(){
    return SwitchListTile(
      value: _bloquarCheck,
      onChanged: (valor){
      setState(() {
       _bloquarCheck=valor; 
      });
      },
      title: Text('Bloquiar slider: '),
      );
  }
}