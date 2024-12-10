import 'package:ejercicio_5/widgets/app_bar_actions.dart';
import 'package:ejercicio_5/widgets/feature_card.dart';
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
        body: SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: isDesktop ? 1000 : 450),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'Quienes Somos',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Nuestra historia',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Text(
                      'NovaFin Solutions fue fundada en 2010 por un grupo de emprendedores apasionados por '
                      'combinar tecnología y finanzas para apoyar a pequeñas empresas con herramientas accesibles. '
                      'Su enfoque en la innovación los llevó a desarrollar, en 2015, la primera plataforma de '
                      'inteligencia artificial para análisis financiero personalizado, lo que impulsó su crecimiento global. '
                      'Hoy, NovaFin es reconocida por su compromiso con la inclusión financiera, proporcionando '
                      'soluciones accesibles y transparentes que transforman vidas y negocios en todo el mundo.'),
                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Nuestra misión',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Text(
                    '"Empoderar a las personas y empresas de todo el mundo a tomar decisiones financieras '
                    'inteligentes y sostenibles mediante tecnología innovadora, educación accesible y '
                    'servicios inclusivos."',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(height: 50),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Nuestros valores',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                      width: 1000,
                      child: GridView.count(
                        crossAxisCount: isDesktop ? 3 : 1,
                        shrinkWrap: true,
                        mainAxisSpacing: 24,
                        crossAxisSpacing: 24,
                        childAspectRatio: 1.2,
                        physics: const NeverScrollableScrollPhysics(),
                        children: const [
                          FeatureCard(
                            icon: Icons.security,
                            title: 'Transparencia',
                            description:
                                'Nuestros servicios son claros y honestos',
                          ),
                          FeatureCard(
                            icon: Icons.star,
                            title: 'Innovación',
                            description:
                                'Siempre buscamos nuevas formas de ayudarte',
                          ),
                          FeatureCard(
                            icon: Icons.accessibility,
                            title: 'Cercanía',
                            description:
                                'Estamos contigo en cada paso del camino',
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
