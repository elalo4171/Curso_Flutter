
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';


 import 'package:componentes/src/pages/home_temp.dart';


 void main() => runApp(MyApp());
  
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: 'Componentes App',
       //home: HomaPage(),
       initialRoute: '/',
        routes: getApplicationRoutes(),
        onGenerateRoute: (RouteSettings settings ){

          print(settings.name);

          return MaterialPageRoute(
            builder: (BuildContext context)=>AlertPage()
          );
        },
     );
   }
 }