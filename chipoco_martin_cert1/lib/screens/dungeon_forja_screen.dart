import 'package:flutter/material.dart';

class ForjaScreen extends StatelessWidget {
  const ForjaScreen({Key? key}) : super(key: key);

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