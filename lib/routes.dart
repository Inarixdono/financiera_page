import 'package:ejercicio_5/views/contacto_screen.dart';
import 'package:ejercicio_5/views/home_screen.dart';
import 'package:ejercicio_5/views/prestamo_calculadora.dart';
import 'package:ejercicio_5/views/quienes_somos_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/';
  static const String quienesSomos = '/quienes-somos';
  static const String servicios = '/servicios';
  static const String calculadora = '/calculadora';
  static const String contacto = '/contacto';

  static Map<String, WidgetBuilder> get routes => {
        home: (context) => const HomeScreen(),
        quienesSomos: (context) => const QuienesSomos(),
        calculadora: (context) => const PrestamoCalculadora(),
        contacto: (context) => const Contacto()
      };
}
