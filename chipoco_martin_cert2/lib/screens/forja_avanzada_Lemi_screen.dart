import 'package:flutter/material.dart';

class ForjaAvanzada extends StatelessWidget {
  const ForjaAvanzada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forja avanzada'),
            centerTitle: true,
            bottom: PreferredSize(
        child: Text("Caminando a la maestría"),
        preferredSize: Size.zero),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30.0),
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              //padding: EdgeInsets.only(right: 100),
              child: Text("Mejoría", style: TextStyle(fontSize: 25, color: Colors.lightBlue)),
            ),
            Container(
              width: double.infinity,
              //padding: EdgeInsets.only(right: 100),
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae metus vel ligula vestibulum scelerisque. Curabitur vitae sapien justo.", style: TextStyle(fontSize: 25, color: Colors.blueGrey)),
            ),
            Container(
              child: Image(image: AssetImage('Assets/forja_avanzada.jpg')),
            ),
            Container(
              child: Text('Fecha de inicio: 1/09/2022'),
            ),
            Container(
              child: Text('Horario: todo el día'),
            ),
            Container(
              width: double.infinity,
              child: Text("Precio del kit:", style: TextStyle(fontSize: 20, color: Colors.blueGrey)),
            ),
            Container(
              width: double.infinity,
              child: Text("90.000 CLP", style: TextStyle(fontSize: 32, color: Colors.blue)),
            ),
          ],
        ),
      ),
    );
  }
}