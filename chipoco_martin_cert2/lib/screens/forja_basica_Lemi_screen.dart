import 'package:flutter/material.dart';
import 'package:proyecto_dam1_pre_alfa/screens/basicscreens/fundamentos_Lemi.dart';
import 'package:proyecto_dam1_pre_alfa/screens/basicscreens/intro_Lemi.dart';
import 'package:proyecto_dam1_pre_alfa/screens/basicscreens/materiales_Lemi.dart';


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
      body: Padding(
        padding: const EdgeInsets.only(left: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              child: Container(
                color: Colors.amber.shade100,
                padding: EdgeInsets.all(10),
                child:
                Text('Introducción')
              ),
              onTap: (){
                _navegarTo(context, 'Intro');
              },
            ),
            InkWell(
              child: Container(
                color: Colors.amber.shade100,
                padding: EdgeInsets.all(10),
                child: Text('Fundamentos'),
              ),
              onTap: (){
                _navegarTo(context, 'Fundamentos');
              },
            ),
            InkWell(
              child: Container(
                color: Colors.amber.shade100,
                padding: EdgeInsets.all(10),
                child: Text('Materiales'),
              ),
              onTap: (){
                _navegarTo(context, 'Materiales');
              },
            ),
            OutlinedButton(
              child: Text('Volver'),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _navegarTo(BuildContext context, String screen){
    final route = MaterialPageRoute(builder: (context){
      switch (screen){
        case 'Fundamentos':
          return BasicFundamentsScreen();
        case 'Materiales':
          return BasicMaterialsScreen();
        default:
          return BasicIntroScreen(); 
      }
    });
    Navigator.push(context, route);
  }

  
}