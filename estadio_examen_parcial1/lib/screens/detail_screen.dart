import 'package:estadio_examen_parcial1/model/estadio.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/estadio.dart';

class DetailScreen extends StatelessWidget {
 
  final Estadio estadio;

  const DetailScreen({Key? key, required this.estadio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(estadio.name),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Descripcion: ${estadio.descripcion}', style: fromTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              const SizedBox(height: 5.0),
              Text('Presidente: ${estadio.presidente}', style: subjectTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              Text('Club Local: ${estadio.local}', style: subjectTextStyle),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              Text('Capacidad: ${estadio.capacidad} ', style: bodyTextStyle),
              const SizedBox(height: 40.0),
                 ElevatedButton(
                style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(184, 255, 16, 3), // background
                onPrimary: Color.fromARGB(255, 255, 254, 254), // foreground
              ),
              onPressed: () { 
                Navigator.pop(context);
              },
              child: Text('Done'),
)
            ],
            
          ),
          
        ))
        ;
    }
}
