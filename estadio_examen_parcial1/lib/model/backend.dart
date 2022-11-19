import 'package:estadio_examen_parcial1/model/estadio.dart';

import 'estadio.dart';

class Backend {

  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  final _estadios=[
     Estadio(id: 1, name: 'Jocay De Manta', descripcion: 'El estadio Jocay es un estadio de fútbol de Ecuador. Está ubicado en la avenida 113 y calle 307 de la ciudad de Manta. Fue inaugurado el 14 de enero de 1962 con el nombre de estadio Modelo de Manta, que luego fue cambiado al nombre actual.', capacidad: '38000', presidente: 'Jose Delgado', local: 'Delfin Sc'),
      Estadio(id: 2, name: 'Reales Tamarindo Portoviejo', descripcion: 'El Estadio Reales Tamarindos es un estadio multiusos ubicado en la avenida Universitaria y calle César Chávez Cañarte de la ciudad de Portoviejo, provincia de Manabí, Ecuador.', capacidad: '10000', presidente: 'Roberto Rodriguez', local: 'Liga Universitaria De Portoviejo'),
      Estadio(id: 3, name: 'Monumental de Guayaquil', descripcion: 'El Estadio Monumental Isidro Romero Carbo, denominado oficialmente como Estadio Monumental Banco Pichincha​ por motivos de patrocinio, es un estadio de fútbol que se encuentra ubicado en la avenida Barcelona, entre el barrio San Eduardo y el barrio Bellavista, al oeste de la ciudad de Guayaquil, Ecuador.', capacidad: '60000', presidente: 'Alfaro Modero', local: 'Barcelona Sc'),
      Estadio(id: 4, name: 'Capwell Guayaquil', descripcion: 'El Estadio George Capwell es un estadio de fútbol ubicado en la calle San Martín y avenida Quito, al sur de la ciudad de Guayaquil, Ecuador, donde juega como local el Club Sport Emelec, equipo de la primera división del fútbol ecuatoriano.',  capacidad: '48000', presidente: 'Nassi Mene', local: 'Club Sport Emelec'),
       Estadio(id: 5, name: 'Casa Blanca Quito', descripcion: 'El estadio de Liga Deportiva Universitaria, conocido extraoficialmente como estadio Casa Blanca y denominado oficialmente como estadio Rodrigo Paz Delgado, es un estadio de fútbol que se encuentra ubicado en la avenida John F.',  capacidad: '56000', presidente: 'Rodrigo Paz', local: 'Liga Universitaria De Quito'),
  ];


 List<Estadio> getEstadios(){
   return _estadios;
 }
 


}
