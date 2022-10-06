import 'package:flutter/material.dart';

class FosoScreen extends StatelessWidget {
  const FosoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Certamen 1 DAM'),
            centerTitle: true,
            bottom: PreferredSize(
        child: Text("Martin Chipoco"),
        preferredSize: Size.zero),
      ),
      body: Column(
        children: [
            
          Container(
            width: double.infinity,
            //padding: EdgeInsets.only(right: 100),
            child: Text("Clases", style: TextStyle(fontSize: 32, color: Colors.blue)),
          ),
          Container(
            width: double.infinity,
            //padding: EdgeInsets.only(right: 100),
            child: Text("Ubicacion", style: TextStyle(fontSize: 32, color: Colors.blue)),
          ),
          Container(
            width: double.infinity,
            //padding: EdgeInsets.only(right: 100),
            child: Text("Buff", style: TextStyle(fontSize: 32, color: Colors.blue)),
          ),
        ],
      ),
    );
  }
}