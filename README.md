# Curso de Flutter

### Aplicacion generada siguiendo el curso de Flutter de Fernando Herrera Udemy

Aqui esta todo el codigo generado del curso tratare de hacer commit por cada video para llevar un mejor control y poder ver los cambios que hize.

Hasta ahora hemos aprendido: 

* Future(Repasar)
* ListView
* ListTitle
* SizeBox
* Divider
* Container 
* Scaffol
* MaterialAPP
* Routes 
* Image with *FadeInImage*
* Card
* Separar la logica en varios archivos
* No apilar gran cantidad de codigo en un archivo y usar metodos para que se mas facil de entender
* Leer un json
* Map (Repasar)
 
# Material App
Se pone en el main y es donde podemos poner todas las rutas de nuestra aplicacion de preferencia en otro archivo las rutas para que no se amotone codigo
```
MaterialApp(
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
```
El onGenerateRoute es una funcion que se ejecuta en caso de que se quiera acceder a una ruta que no se conoce  en este caso se iria a AlertPage()

# SizedBox
El sizedBox sirve para separar y acomodar widgets


# Column y Row

Con mainAxisSize podemos controlar el tamano de las columnas

# AlertDialog
En el widget AlertDialog podemos poner el actions que recibe una lista de widgets para poner botones por ejemplo

```
actions: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: ()=>Navigator.of(context).pop(),
            ),FlatButton(
              child: Text('Ok'),
              onPressed:  ()=>Navigator.of(context).pop(),
            ),

          ],
```
En este ejemplo los 2 botones cierran la alreta 

### Para ponder bordes redondiados al alert se usa el siguiente codigo

```
RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
```

# Recuerda usar la funcion de flecha
```
()=>
```
La funcion de flecha se usa cuando tienes una funcion que solo tiene una linea

# CircleAvatar
El CircleAvatar va dentro del AppBar en las actions de este
```
actions: <Widget>[

          CircleAvatar(
            backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Stan_Lee_by_Gage_Skidmore_3.jpg/330px-Stan_Lee_by_Gage_Skidmore_3.jpg'),
            radius: 30.0,
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar( 
              child: Text('SL'),
              backgroundColor: Colors.brown,

            ),
          )
        ],
```

# FadeInImage
Sirve para poner imagenes asi como para poner otra de mientras carga la imagen en caso de que sea traiada de internet con *network*

```
FadeInImage(
          image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/StanLeeChrisEvansCCJuly2011.jpg/375px-StanLeeChrisEvansCCJuly2011.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        ),
```
# AnimatedContainer
El animatedContainer sirve para animar container comparte casi todas las propiedades del comtainer solo necesitas agregar la *duration* y las curves que son tipos de animaciones ya preestablecidas

```
child: AnimatedContainer(
          duration: Duration( seconds: 1),
           curve: Curves.fastOutSlowIn,
```
# TextField
Los textField son los inputs de texto para manejar las entradas de nuestra aplicacion estos cuentan con una gran cantidad de personalizacion como se puede ver en el siguiente ejemplo
```
TextField(
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
```
Para correos y contrasenas hay algo cuenta con un keyboardType y obscureText

```
 keyboardType: TextInputType.emailAddress, 
 obscureText: true,
```



# Atajos 
>Ctrl+. 

Control + punto sirve para envovler Widget dentro de otros como colum o container, tambien puede solucionar problemas

>Ctrol+ espacio

Control + espacio sirve para ver los datos que puede recibir una Widget 

# Github
>git push -f origin master
>git pull
>git add .
>git commit -m "Se agrego el avatar"





