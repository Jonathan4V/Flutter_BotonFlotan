//Importacion de libreria material
import 'package:flutter/material.dart';

//Crea la clase y el estado a cambiar
class BotonFlotante extends StatefulWidget {
  const BotonFlotante({super.key});
  _BotonFlotante createState() => _BotonFlotante();
}

//Crear los widgets a mostrar
class _BotonFlotante extends State<BotonFlotante> {
  String txt="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boton Flotante'),
      ),
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(txt)
          ],
         ),
      ),
      floatingActionButton: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
                    child: Icon(Icons.visibility),
                    onPressed: ()=> setState(() => txt="Hola Mundo")
                  ),
                  FloatingActionButton(
                    child: Icon(Icons.visibility_off),
                    onPressed: ()=> setState(() => txt="")
                  ),
        ],
       )
    );
  }
}

