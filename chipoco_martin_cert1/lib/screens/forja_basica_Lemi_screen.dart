import 'package:flutter/material.dart';

class ForjaBasica extends StatelessWidget {
  const ForjaBasica({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Herrería asistida'),
            centerTitle: true,
            bottom: PreferredSize(
        child: Text("Nivel básico"),
        preferredSize: Size.zero),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Forja 1'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Forja 2'),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Tab(
                  child: Text("Forja 3"),
                ),
              ],
            ),
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