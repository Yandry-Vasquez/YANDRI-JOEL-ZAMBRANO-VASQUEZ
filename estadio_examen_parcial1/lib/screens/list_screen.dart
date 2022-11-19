import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/backend.dart';
import '../widgets/estadio_widget.dart';
import 'detail_screen.dart';
import '../model/estadio.dart';

class ListScreen extends StatefulWidget {


  const ListScreen({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {


  
  
  var estadios = Backend().getEstadios();
 

  void showDetail( Estadio estadio) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailScreen( estadio: estadio,);
    }));
    
    setState(() {
 
      estadios = Backend().getEstadios();
    });
  }

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), 
    
      ),


      
      body: ListView.separated(
        itemCount: estadios.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: primaryColor,
          indent: 40.0,
          endIndent: 20.0,
        ),
          itemBuilder: (BuildContext context, int index) => EmailWidget(
          estadio: estadios[index],
          onTap: showDetail,  
  
        ),
      
          
      ),  

    );  
  }
}
