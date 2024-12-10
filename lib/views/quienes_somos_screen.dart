import 'package:ejercicio_5/widgets/app_bar_actions.dart';
import 'package:ejercicio_5/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';

class QuienesSomos extends StatelessWidget {
  const QuienesSomos({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = MediaQuery.of(context).size.width >= 600;
    return Scaffold(
        appBar: AppBar(
          title: const Text('FinanTech'),
          actions: isDesktop ? const [AppBarActions()] : null,
        ),
        drawer: isDesktop ? null : const CustomNavigationDrawer(),
        body: const Text("Aquí diremos quienes somos"));
  }
}
