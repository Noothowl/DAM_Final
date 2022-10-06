import 'package:flutter/material.dart';
import 'package:proyecto_dam1_pre_alfa/screens/forja_encantada_Lemi_screen.dart';
import 'package:proyecto_dam1_pre_alfa/screens/forja_basica_Lemi_screen.dart';
import 'package:proyecto_dam1_pre_alfa/screens/forja_avanzada_Lemi_screen.dart';
import 'package:proyecto_dam1_pre_alfa/screens/forja_oscura_Lemi_screen.dart';


class DungeonsScreen extends StatelessWidget {
  const DungeonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final estiloTexto = new TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 96, 72, 232));
    return Scaffold(
      appBar: AppBar(
        title: Text('C1 DAM020-2022-2', style: estiloTexto,),
            centerTitle: true,
            bottom: PreferredSize(
        child: Text("Martin Chipoco", style: estiloTexto),
        preferredSize: Size.zero),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
              /*Divider(
              thickness: 1.5,
              ),
              */
            ListTile(
              leading: Icon(Icons.workspaces_outlined, color: Colors.lightBlue
              ),
              title: Text("Herrería básica"),
              subtitle: Text("Perfecto para nivel aprendiz"),
              onTap: (){
                _navegarTo(context, 'Basic');
              },
            ),
            Divider(
              thickness: 1.5,
            ),
            ListTile(
              leading: Icon(Icons.workspaces_rounded, color: Colors.blueAccent),
              title: Text("Herrería Avanzada"),
              subtitle: Text("Camina hacia la Maestría"),
              
              onTap: (){
                print("Printing project settings");
                _navegarTo(context, 'Advanced');
              },
              
            ),
            Divider(
              thickness: 1.5,
            ),
            ListTile(
              leading: Icon(Icons.align_horizontal_left, color: Colors.green),
              title: Text("Herrería Encantada"),
              subtitle: Text("Comienza a forjar la magia"),
              
              onTap: (){
                print("Printing project users");
                _navegarTo(context, 'Magic');
              },
              
            ),
            Divider(
              thickness: 1.5,
            ),
            ListTile(
              leading: Icon(Icons.align_horizontal_center_sharp, color: Colors.deepPurple),
              title: Text("Herrería Oscura"),
              subtitle: Text("Magia negra (legal)"),
              onTap: (){
                print("Printing project users");
                _navegarTo(context, 'Darkness');
              },
              
            ),
            Divider(
              thickness: 1.5,
            ),
          ],
        ),
      ),





    );
  }

  void _navegarTo(BuildContext context, String screen){
    final route = MaterialPageRoute(builder: (context){
      switch (screen){
        case 'Basic':
          return ForjaBasica();

        case 'Advanced': 
          return ForjaAvanzada();

        case 'Magic':
          return ForjaEncant();

        default:
          return ForjaOscura(); 
      }
    });
    Navigator.push(context, route);
  }


}

