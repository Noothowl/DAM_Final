import 'package:flutter/material.dart';

class BasicIntroScreen extends StatelessWidget {
  const BasicIntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Introducción a la Herrería'),
            centerTitle: true,
            bottom: PreferredSize(
        child: Text("Introducción"),
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
              child: Text("Introducción", style: TextStyle(fontSize: 32, color: Colors.lightBlue)),
            ),
            Container(
              width: double.infinity,
              //padding: EdgeInsets.only(right: 100),
              child: Text("Para comenzar a forjar requieres un material sólido para dar resistencia y un material de unión para dar volúmen", style: TextStyle(fontSize: 25, color: Colors.blueGrey)),
            ),
            Container(
              child: Image(image: AssetImage('Assets/forja_intro.jpg')),
            ),
            Container(
              child: Text('Fecha de inicio: 10/08/2022'),
            ),
            Container(
              child: Text('Horario: todo el día'),
            ),
            Container(
              width: double.infinity,
              child: Text("Precio del kit:", style: TextStyle(fontSize: 30, color: Colors.blueGrey)),
            ),
            Container(
              width: double.infinity,
              child: Text("35.000 CLP", style: TextStyle(fontSize: 32, color: Colors.blue)),
            ),
          ],
        ),
      ),
    );
  }
}