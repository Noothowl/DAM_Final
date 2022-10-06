import 'package:flutter/material.dart';

class CamarasScreen extends StatelessWidget {
  const CamarasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Image(image: image),
            title: Text('Herrería asistida'),
            centerTitle: true,
            bottom: PreferredSize(
        child: Text("Forjando INC.c"),
        preferredSize: Size.zero),
      ),
      body: Column(
        children: [
          Center(
            child: Text('Camaras de reflexion'),
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