import 'package:flutter/material.dart';

// ? ESTE ARCHIVO ES UN PROVIDER NOTIFICADOR QUE INICIALIZA LAS VARIABLES
// ? NECESARIAS PARA TODA LA UTILERIA DE LA APLICACIÓN

class Media extends ChangeNotifier {
  // * Variables
  // Pantalla - Dimensiones
  double anchoT = 0.0; // Ancho Total de la pantalla
  double altoT = 0.0; // Alto Total de la pantalla
  double anchoSA = 0.0; // Ancho menos padding [SafeArea] calculado
  double altoSA = 0.0; // Alto menos padding [SafeArea] calculado

  // Colores
  final int azul = 0xff005070;

  // * Variables que deben inicalizarse por contexto al inicio de la app
  String initAppMedia(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    EdgeInsets p = MediaQuery.of(context).padding;
    anchoT = s.width;
    altoT = s.height;
    anchoSA = s.width - (p.left + p.right);
    altoSA = s.height - (p.top + p.bottom);
    print("InitMedia");
    return "InitMedia";
  }
}
