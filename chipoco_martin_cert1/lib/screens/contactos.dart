import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ContactosScreen extends StatelessWidget {
  const ContactosScreen({Key? key}): super(key: key);
    
  

  @override
  
  Widget build(BuildContext context) {
    final estiloTexto = new TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 96, 72, 232));
    return Scaffold(
      appBar: AppBar(
        title: Text('C1 DAM020-2022-2', style: estiloTexto,),
            centerTitle: true,
            bottom: PreferredSize(
        child: Text("Martin Chipoco", style: estiloTexto),
            preferredSize: Size.zero),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              labelText: 'Ingrese correo electronico',
              suffixIcon: Icon(MdiIcons.cash)),
          ),
          TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              labelText: 'Ingrese su edad',
              suffixIcon: Icon(MdiIcons.cash)),
          ),
          TextField(
          keyboardType: TextInputType.datetime,
          decoration: InputDecoration(
              labelText: 'Ingrese fecha',
              suffixIcon: Icon(MdiIcons.calendarToday)),
          ),
        ],

      ),
    );
  }
}