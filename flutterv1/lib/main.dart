
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';


 void main() => runApp(MyApp());
  
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
        localizationsDelegates: [
            // ... app-specific localization delegate[s] here
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
              const Locale('en'), // English
              const Locale('es'), // Hebrew
              const Locale.fromSubtags(languageCode: 'zh'), // Chinese *See Advanced Locales below*
              // ... other locales the app supports
            ],
       debugShowCheckedModeBanner: false, //Quita la barra de debug 
       title: 'Componentes App',
       //home: HomaPage(),
       initialRoute: '/', //Se define la ruta por default
        routes: getApplicationRoutes(), //Se agregan las rutas para que la app sepa con que rutas cuenta(Desde otro archivo)
        onGenerateRoute: (RouteSettings settings ){
          print(settings.name);
          return MaterialPageRoute(
            builder: (BuildContext context)=>AlertPage()  //En caso de que no se encentre una ruta lo mandara aqui
          );
        },
     );
   }
 }