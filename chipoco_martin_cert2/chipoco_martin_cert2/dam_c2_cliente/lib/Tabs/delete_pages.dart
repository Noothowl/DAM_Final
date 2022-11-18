import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DeletePage extends StatefulWidget {
  //ListScreen({Key? key}) : super(key: key);

  @override
  State<DeletePage> createState() => _DeletePage();
}

class _DeletePage extends State<DeletePage> {
  TextEditingController vinController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('eliminar Auto'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Ingrese Vin Auto'),
            controller: vinController,
          ),
          ElevatedButton(
              onPressed: () {
                deleteAuto(vinController);
              },
              child: Text('Eliminar'))
        ],
      ),
    );
  }

  void deleteAuto(dynamic id) async {
    var url = Uri.parse('http://10.0.2.2:8000/api/autos/${vinController}');
    var response = await http.delete(url);
    if (response.statusCode == 200) {
      print('auto borrado');
    } else {}
  }
}
