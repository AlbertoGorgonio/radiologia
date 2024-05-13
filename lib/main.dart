import 'package:firebase_core/firebase_core.dart'; // Importa la biblioteca de Firebase Core
import 'package:flutter/material.dart';

import 'login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Asegura que los widgets estén inicializados
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCRBQEPzX86RtLqnBWbOOFvFrJP_tzzTyk",
      authDomain: "radiologia-df93b.web.app",
      projectId: "radiologia-df93b",
      appId: "1:800472663482:android:1f9752ef3727a84536c983",
      messagingSenderId: "800472663482",
    ),
  );
  runApp(MyApp()); // Cambiado de MyScreen a MyApp
}

class MyApp extends StatelessWidget { // Cambiado de MyScreen a MyApp
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScreen(),
      debugShowCheckedModeBanner: false, // Oculta la barra de debug
    );
  }
}

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
