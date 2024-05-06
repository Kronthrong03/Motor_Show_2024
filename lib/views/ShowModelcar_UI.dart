// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:motor_show_2024_app/views/CalculateCarUI.dart';
import 'package:motor_show_2024_app/views/ShowHondaUI.dart';
import 'package:motor_show_2024_app/views/ShowMazdaUI.dart';
import 'package:motor_show_2024_app/views/ShowMitsuUI.dart';
import 'package:motor_show_2024_app/views/ShowToyotaUI.dart';

class ShowModelcar_UI extends StatefulWidget {
  const ShowModelcar_UI({super.key});

  @override
  State<ShowModelcar_UI> createState() => _ShowModelcar_UIState();
}

class _ShowModelcar_UIState extends State<ShowModelcar_UI> {
  int _currentIndex = 2;
 
  List _currentShow = [
    ShowToyotaUI(),
    ShowMitsuUI(),
    CalculateUI(),
    ShowHondaUI(),
    ShowMazdaUI(),
  ];
 
  List<String> _titleText = [
    'Toyota',
    'Mitsubishi',
    'คำนวณค่างวดรถ',
    'Honda',
    'Mazda',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 219, 4, 4),
        title: Text(
          _titleText[_currentIndex],
          style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentIndex=value;
          });
        },
        currentIndex: _currentIndex,
        unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
        selectedItemColor: Color.fromARGB(255, 0, 0, 0),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/LogoToyota.png',
              width: MediaQuery.of(context).size.width *0.15,
            ),
            label: ' ',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/LogoMitsu.png',
              width: MediaQuery.of(context).size.width *0.15,
            ),
            label: ' ',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/LogoCalculate.jpg',
              width: MediaQuery.of(context).size.width *0.15,
            ),
            label: ' ',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/Logohonda.png',
              width: MediaQuery.of(context).size.width *0.15,
            ),
            label: ' ',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/Mazdalogo.png',
              width: MediaQuery.of(context).size.width * 0.55,  
            ),
            label: ' ',
            backgroundColor: Colors.white,
          ),
        ],
      ),
      body: _currentShow[_currentIndex],
    );
  }
}