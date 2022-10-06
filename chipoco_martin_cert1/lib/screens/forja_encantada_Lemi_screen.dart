import 'package:flutter/material.dart';

class ForjaEncant extends StatelessWidget {
  const ForjaEncant({Key? key}) : super(key: key);

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
          Center(
            child: Text('Encantada'),
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