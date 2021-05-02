import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portafolio/widgets/imagen_fondo_widget.dart';
import 'package:portafolio/widgets/barra_superior.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ImagenFondoWidget(
      widgets: [
        BarraSuperior(),
        Container(
          constraints: BoxConstraints.expand(),
          //color: Colors.green[300],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(45)),
                child: Image.asset(
                  'lib/img/unnamed.png',
                  width: 100,
                ),
              ),
              Text(
                '- - - - - - - - - - - - - - - - - - - - - - -',
                style: TextStyle(
                    fontSize: Get.width >= 680 ? 50.0 : 20.0,
                    color: Colors.white),
              ),
              Text(
                'Jonathan Morales Centeno',
                style: TextStyle(
                    fontSize: Get.width >= 680 ? 50.0 : 25.0,
                    color: Colors.white),
              ),
              Text(
                '- - - - - - - - - - - - - - - - - - - - - - -',
                style: TextStyle(
                    fontSize: Get.width >= 680 ? 50.0 : 20.0,
                    color: Colors.white),
              ),
            ],
          ),
        )
      ],
    );
  }
}
