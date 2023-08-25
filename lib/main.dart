import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // Importar Cupertino para CupertinoSlider

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const 
            Text(          
              'Andrew',
              style: TextStyle(fontSize: 25), // Tamaño de fuente más grande
              textAlign: TextAlign.center,
            ),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Fondo rojo
              Container(
                color: Color.fromARGB(160, 135, 201, 213),
              ),
              // Tarjeta
              MyCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatefulWidget {
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5, // Elevación de la tarjeta
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), // Establecer bordes redondeados
      ),
      child: Container(
        width: 360, // Ancho de la tarjeta
        height: 640,
        
        padding: const EdgeInsets.all(16), // Espaciado interior
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 70),
            Text(          
              '¿Qué tipo de servicio necesitas?',
              style: TextStyle(fontSize: 15), // Tamaño de fuente más grande
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
                    
            Text(
              'Seleccione una de las siguientes opciones',
              style: TextStyle(fontSize: 11), // Tamaño de fuente más grande
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40), // Espacio entre el texto y los botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [          
                ElevatedButton(
                  onPressed: () {
                    // Acción a realizar cuando se presiona el primer botón
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(172, 212, 255, 0.712), // Cambiar a cualquier color que desees
                  ),
                  child: Text('Desde mi casa'),
                ),
              ],
            ),
            SizedBox(height: 20), // Espacio entre el texto y los botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Acción a realizar cuando se presiona el primer botón
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(172, 212, 255, 0.712), // Cambiar a cualquier color que desees
                  ),
                  child: Text('Desde la casa del cuidador'),
                ),
              ],
            ),
            
            SizedBox(height: 20), // Espacio entre el texto y los botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Acción a realizar cuando se presiona el primer botón
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(172, 212, 255, 0.712), // Cambiar a cualquier color que desees
                  ),
                  child: Text('Caminata'),
                ),
              ],
            ),
            SizedBox(height: 130), // Espacio entre los botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                SizedBox(width: 10), // Espacio entre los botones
                ElevatedButton(
                  onPressed: () {
                    // Acción a realizar cuando se presiona el tercer botón
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(45,189,254,1), // Cambiar a cualquier color que desees
                  ),
                  child: Text('Atras'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
