import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 410,
          padding: const EdgeInsets.symmetric(vertical: 25),
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(),
          child: const Column(
            children: [
              SizedBox(
                child: Column(
                  children: [
                    ServiceCard(serviceTitle: 'Lavado', serviceDescription: 'Nuestro servicio de lavado en la lavandería ofrece resultados impecables en cada prenda.', serviceIcon: 'washingMachine', serviceImagePath: 'servicio1.jpg',),
                    ServiceCard(serviceTitle: 'Lavado en seco', serviceDescription: 'Refresca tu estilo con nuestro servicio de lavado en seco premium. Especializados en prendas delicadas y difíciles de lavar en agua.', serviceIcon: 'iron', serviceImagePath: 'servicio2.jpg',),
                    ServiceCard(serviceTitle: 'Especiales', serviceDescription: 'Elevando el cuidado de tus prendas especiales. Nuestro servicio especializado de lavado cuida con esmero tus sacos, vestidos y prendas delicadas.', serviceIcon: 'hanger', serviceImagePath: 'servicio3.jpg',),
                  ],
                ),
              )
              
            ],
          ),
        ),
      ],
    );
  }
}

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key, required this.serviceTitle, required this.serviceDescription, required this.serviceImagePath, required this.serviceIcon});

  final String serviceTitle;
  final String serviceDescription;
  final String serviceImagePath;
  final String serviceIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 384,
          margin: const EdgeInsets.symmetric(vertical: 15),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x33000000),
                blurRadius: 15,
                offset: Offset(4, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                    Container(
                    height: 89,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18)),
                      image: DecorationImage(
                        image: AssetImage('assets/$serviceImagePath'),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  Positioned.fill(
                    child: Column(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                              margin: const EdgeInsets.only(left: 18, bottom: 10),
                              decoration: ShapeDecoration(
                                color: Colors.white.withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x14000000),
                                    blurRadius: 15,
                                    offset: Offset(0, 0),
                                    spreadRadius: 4,
                                  )
                                ],
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(),
                                    child: Stack(children: [
                                      Icon(MdiIcons.fromString(serviceIcon), color: Colors.black,)
                                    ]),
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    serviceTitle,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        )
                      ]
                    ,)
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  
                  SizedBox(
                    width: 345,
                    
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                      child: Text(
                        serviceDescription,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    
                    
                  )
                ]
              ),
            ],
          ),
        )
      ],
    );
  }
}