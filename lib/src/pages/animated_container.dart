import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);

  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _width=50.0;
  double _heigth=50.0;
  Color _color= Colors.pink;
  BorderRadiusGeometry _borderRadius=BorderRadius.circular(8.0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('Animated Container'),

      ),
      body: Center(
        child: Container(
          width: _width,
          height: _heigth,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),

        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: (){
          _width=150;
          _heigth=80;
          _color= Colors.amberAccent;
          setState(() {
            
          });
        },
      ),
    );
  }
}