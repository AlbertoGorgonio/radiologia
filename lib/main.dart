import 'package:flutter/material.dart';

import 'login.dart';

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40.0), // Espacio superior
            Text(
              'RADIOLOGÍA',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
              ),
            ),
            SizedBox(height: 20.0),
            Image.asset(
              'assets/images/ini.png',
              width: 300.0, // Ajusta el ancho según tus necesidades
              height: 300.0, // Ajusta la altura según tus necesidades
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, // Color del texto del botón
                backgroundColor: Colors.blue, // Color de fondo del botón
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0), // Padding del botón
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold, // Texto en negritas
                ),
              ),
              child: Text('Comenzar'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyScreen(),
    debugShowCheckedModeBanner: false, // Oculta la barra de debug
  ));
}
