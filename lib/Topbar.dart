import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Topbar extends StatelessWidget {
  const Topbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 370,
          height: 80,
          child: Stack(
            children: [
              const Positioned(
                left: 147,
                top: 21,
                child: Text(
                  'Inicio',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const Positioned(
                left: 0,
                top: 0,
                child: Image(
                  image: AssetImage("assets/logo.png"),
                  width: 80,
                  height: 80,
                  ),
              ),
              Positioned(
                left: 335,
                top: 20,
                child: Container(
                  width: 45,
                  height: 45,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Align(
                      alignment: Alignment.center,
                      child: Stack(children: [
                       Icon(MdiIcons.menu, color: Colors.black,)
                    ]),
                  )
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}