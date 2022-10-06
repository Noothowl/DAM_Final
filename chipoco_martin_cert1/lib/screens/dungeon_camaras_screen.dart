import 'package:flutter/material.dart';

class CamarasScreen extends StatelessWidget {
  const CamarasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Image(image: image),
            title: Text('Certamen 1 DAM'),
            centerTitle: true,
            bottom: PreferredSize(
        child: Text("Martin Chipoco"),
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