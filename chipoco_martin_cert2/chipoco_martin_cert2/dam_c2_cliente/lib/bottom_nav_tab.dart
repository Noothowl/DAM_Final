import 'package:flutter/material.dart';
import 'package:flutter_application_1/Tabs/delete_pages.dart';
import 'package:flutter_application_1/Tabs/list_pages.dart';
import 'package:flutter_application_1/Tabs/add_pages.dart';

class BottomNav extends StatefulWidget {
  //BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  List<Widget> _pages = [
    AutosPages(),
    AddPage(),
    DeletePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('C2 Martin Chipoco')),
      body: _pages[_currentIndex],
      //Center(child: Text('Body bottom nav')),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.inventory_2_outlined), label: 'Listado'),
          BottomNavigationBarItem(
              icon: Icon(Icons.edit_attributes_outlined), label: 'Agregar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_outline), label: 'Eliminar'),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          //print(index); para ver en consola que funciona
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
