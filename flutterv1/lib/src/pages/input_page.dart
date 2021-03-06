import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

String _nombre="";
String _email="";
String _fecha="";
String _optSeleccionanda='Volar';

List<String> _poderes=['Volar', 'Rayos x', 'Aliento', 'Fuerza', "Hola"];
TextEditingController _inputFieldDateController = new TextEditingController();

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
            _crearPassword(),
            Divider(),
            _crearDate(context),
            Divider(),
            _crearDrowpdown(),
            Divider(),
            _crearPersona(),

            
            
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
      trailing: Text(_optSeleccionanda),
      
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

  Widget _crearDate(BuildContext context) {
      return TextField(
        controller: _inputFieldDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: " Fecha de Nacimiento",
        labelText: "Fecha de nacimiento",
        
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today),

      ),  
      onTap: (){
        
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);


      } ,                                  
    );

  }

   _selectDate(BuildContext context) async{

     DateTime picked = await showDatePicker(
       locale: Locale('es','ES'),
       context: context,
       initialDate: new DateTime(1998),
       firstDate: new DateTime(1950),
       lastDate: new DateTime(2000),

     );

     if(picked != null){
       setState(() {
        _fecha= ""+picked.day.toString()+"/"+picked.month.toString() +"/"+picked.year.toString();
        _inputFieldDateController.text=_fecha;
       });
     }

  }

  List<DropdownMenuItem<String>> getOpcionesDropdown(){

    List<DropdownMenuItem<String>> lista = new List();

    _poderes.forEach((poder){

      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));

    });
    return lista;

  }

  Widget _crearDrowpdown() {

    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0,),
        DropdownButton(
          
      items: getOpcionesDropdown(),
      value: _optSeleccionanda,
      onChanged: (opt){
        setState(() {
         _optSeleccionanda=opt;
         
        });
      },
    )
      ],
    );
    
    
    
  }


}