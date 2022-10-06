import 'package:flutter/material.dart';

class ForjaOscura extends StatelessWidget {
  const ForjaOscura({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Image(image: image),
            title: Text('Herrería Oscura'),
            centerTitle: true,
            bottom: PreferredSize(
        child: Text("Esto no es legal"),
        preferredSize: Size.zero),
      ),
      body: Column(
        children: [
          Center(
            child: Text('Forja Magia Oscura'),
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