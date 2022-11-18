import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/Tabs/add_pages.dart';
import '../models/autos.dart';

class AddPage extends StatefulWidget {
  //ListScreen({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPage();
}

class _AddPage extends State<AddPage> {
  TextEditingController vinController = new TextEditingController();
  TextEditingController marcaController = new TextEditingController();
  TextEditingController modeloController = new TextEditingController();
  TextEditingController anioController = new TextEditingController();
  TextEditingController precioController = new TextEditingController();

  late Autos _autos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Auto'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Ingrese Vin auto'),
                controller: vinController,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Ingrese marca del auto'),
                controller: marcaController,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Ingrese el modelo del auto'),
                keyboardType: TextInputType.number,
                controller: modeloController,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Ingrese año del auto'),
                controller: anioController,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Ingrese precio del auto'),
                controller: precioController,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () async {
                    String vin = vinController.text;
                    String marca = marcaController.text;
                    String modelo = modeloController.text;
                    int anio = anioController.value as int;
                    int precio = precioController.value as int;
                    Autos? autos =
                        await submitData(vin, marca, modelo, anio, precio);

                    setState(() {
                      _autos = autos!;
                    });
                  },
                  child: Text('Agregar Auto'))
            ],
          ),
        ),
      ),
    );
  }

  Future<Autos?> submitData(
      String vin, String marca, String modelo, int anio, int precio) async {
    const apiURL = 'http://10.0.2.2:8000/api/autos';

    var url = Uri.parse(apiURL);
    var response = await http.post((url), body: {
      'vin': vin,
      'marca': marca,
      'modelo': modelo,
      'año': anio,
      'precio': precio
    });
    var data = response.body;
    print(data);

    if (response.statusCode == 200) {
      String responseString = response.body;
      autosFromJson(responseString);
    } else {
      return null;
    }
  }
}
