import 'package:flutter/material.dart';
import '../constants.dart';
import '../model/estadio.dart';

class EmailWidget extends StatelessWidget {
  final Estadio estadio;
  final Function onTap;


  const EmailWidget(
      {Key? key,
      required this.estadio,
      required this.onTap,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
      },
      onLongPress: () {
      },
      onTap: () {
        onTap(estadio);
      },
      
      child: Container(
      
        padding: const EdgeInsets.all(10.0),
        height: 80.0,

        child: Row(
       
          
          children: <Widget> [
            
            
            Expanded(
              flex: 1,
              child: Container(
                height: 12.0,
                
              ),
              
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Nombre : ${estadio.name}', style: fromTextStyle),
                   Text('Capacidad: ${estadio.capacidad}', style: subjectTextStyle),
                  Text('Club Local: ${estadio.local}',
                      style: fromTextStyle),
                 
                ],
              ),
            )
       
          ],
        ),
      ),
    );
  }
}
