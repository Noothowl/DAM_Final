import 'package:flutter/material.dart';

class ForjaEncantada extends StatelessWidget {
  const ForjaEncantada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Image(image: image),
            title: Text('Herrería Mágica'),
            centerTitle: true,
            bottom: PreferredSize(
        child: Text("Forja Encantamientos"),
        preferredSize: Size.zero),
      ),
      body: Column(
        children: [
                      Container(
              width: double.infinity,
              //padding: EdgeInsets.only(right: 100),
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae metus vel ligula vestibulum scelerisque. Curabitur vitae sapien justo.", style: TextStyle(fontSize: 25, color: Colors.blueGrey)),
            ),
            Container(
              child: Image(image: AssetImage('Assets/forja_encantada.jfif')),
            ),
            Container(
              child: Text('Fecha de inicio: 5/09/2022'),
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
              child: Text("1.000.000 CLP", style: TextStyle(fontSize: 32, color: Colors.blue)),
            ),
          OutlinedButton(
            child: Text('Volver'),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}